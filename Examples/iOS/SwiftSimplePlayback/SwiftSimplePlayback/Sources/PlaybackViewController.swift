/*****************************************************************************
 * PlaybackViewController.swift
 *
 * Copyright © 2018 VLC authors and VideoLAN
 * Copyright © 2018 Videolabs
 *
 * Authors: Soomin Lee <bubu@mikan.io>
 *
 * Refer to the COPYING file of the official project for license.
 *****************************************************************************/

import UIKit
import DynamicMobileVLCKit

class PlaybackViewController: UIViewController {
//    let mediaURL = "https://dash.akamaized.net/akamai/test/caption_test/ElephantsDream/elephants_dream_480p_heaac5_1.mpd"
//    let mediaURL = "https://www.libde265.org/hevc-bitstreams/tos-1720x720-cfg01.mkv"
//    let mediaURL =     "https://dash.akamaized.net/dash264/TestCasesMCA/fraunhofer/HE-AACv2_Multichannel/1/6chID/6chId_480p_single_adapt_heaac5_1_sidx.mpd"
    let mediaURL = "https://media.axprod.net/TestVectors/v6.1-MultiDRM/Manifest_1080p.mpd"
    @IBOutlet weak var movieView: UIView!

    var mediaPlayer = VLCMediaPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMediaPLayer()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mediaPlayer.play()
    }

    func setupMediaPLayer() {
        mediaPlayer.delegate = self
        movieView.contentMode = .scaleToFill
        movieView.clipsToBounds = true
        mediaPlayer.drawable = movieView
        let bounds = movieView.bounds
        let aspectRatio = calcAspectRatio(bounds: bounds)
        mediaPlayer.videoAspectRatio = aspectRatio
        print("aspectRatio \(String(describing: mediaPlayer.videoAspectRatio))", aspectRatio)
        mediaPlayer.media = VLCMedia(url: URL(string: mediaURL)!)
    }
    
    func calcAspectRatio(bounds: CGRect, accuracy: CGFloat = 0.0001) -> UnsafeMutablePointer<Int8> {
        let ratio = round(bounds.width / (accuracy * bounds.height)) * accuracy
        let aspectRatio = "\(Int(ratio / accuracy)):\(Int(1/accuracy))"
        let cs = (aspectRatio as NSString).utf8String
        return UnsafeMutablePointer<Int8>.init(mutating: cs)!
    }

    @IBAction func handlePlayPause(_ sender: UIButton) {
        if mediaPlayer.isPlaying {
            mediaPlayer.pause()
            sender.isSelected = true
        } else {
            mediaPlayer.play()
            sender.isSelected = false
        }
    }
    
    @IBAction func handleMute(_ sender: UIButton) {
        if mediaPlayer.currentAudioTrackIndex < 0 {
            let indexes = mediaPlayer.audioTrackIndexes
            let last: Int32 = indexes?.last as! Int32
            if last >= 0 {
                mediaPlayer.currentAudioTrackIndex = last
            }
        } else {
            mediaPlayer.currentAudioTrackIndex = -1
        }
    }
}

extension PlaybackViewController: VLCMediaPlayerDelegate {

    func mediaPlayerStateChanged(_ aNotification: Notification!) {
        if mediaPlayer.state == .stopped {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
