//
//  VDLMainViewController.m
//  Dropin-Player
//
//  Created by Felix Paul Kühne on 19.11.13.
//  Copyright (c) 2013 VideoLAN. All rights reserved.
//

#import "VDLMainViewController.h"
#import "VDLAppDelegate.h"

@interface VDLMainViewController ()

@end

@implementation VDLMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)startPlayback:(id)sender
{
    VDLAppDelegate *appDelegate = (VDLAppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate playStreamFromURL:[NSURL URLWithString:@"https://www.elecard.com/storage/video/bbb_1080p_c.ts"]];
//    [appDelegate playStreamFromURL:[NSURL URLWithString:@"http://download.tsi.telecom-paristech.fr/gpac/dataset/dash/uhd/mux_sources/hevcds_720p30_2M.mp4"]];
//    [appDelegate playStreamFromURL:[NSURL URLWithString:@"https://dash.akamaized.net/dash264/TestCasesUHD/2b/11/MultiRate.mpd"]];
//    [appDelegate playStreamFromURL:[NSURL URLWithString:@"https://dash.akamaized.net/dash264/TestCasesIOP33/adapatationSetSwitching/5/manifest.mpd"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
