Pod::Spec.new do |s|
    s.name         = "DynamicMobileVLCKit"
    s.version      = "3.3.16"
    s.summary      = "MobileVLCKit is an Objective-C wrapper for libvlc's external interface on iOS."
    s.homepage     = 'https://wiki.videolan.org/VLCKit/'
    s.license      = {
      :type => 'LGPL v2.1', :file => 'COPYING.txt'
    }
    s.authors      = 'Pierre d\'Herbemont', { 'Felix Paul Kühne' => 'fkuehne@videolan.org' }
    s.source       = { :git => "https://github.com/flussonic/DynamicMobileVLCKit.git", :tag => "#{s.version}" }
    s.platform     = :ios
    s.public_header_files = "*.framework/Headers/*.h"
    s.source_files = "*.framework/Headers/*.h"
    s.vendored_frameworks = "DynamicMobileVLCKit.framework"

    # vlc kit dependencies
    s.frameworks = "QuartzCore", "CoreText", "AVFoundation", "Security", "CFNetwork", "AudioToolbox", "OpenGLES", "CoreGraphics", "VideoToolbox", "CoreMedia"
    s.libraries = "c++", "xml2", "z", "bz2", "iconv"
    s.xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => "c++11",
      'CLANG_CXX_LIBRARY' => "libc++"
    }

    s.ios.deployment_target  = '9.3'
end