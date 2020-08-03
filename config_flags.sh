export BOOTSTRAP_FLAGS=
export CONFIGURE_FLAGS=
export MODULES_BLACKLIST=
export NOSCARY_MODULES_BLACKLIST=
COMMON_FF_CFG_FLAGS=
source ./ffmpeg_config.sh

for ffmpeg_flag in ${COMMON_FF_CFG_FLAGS}
do
  BOOTSTRAP_FLAGS="${BOOTSTRAP_FLAGS} --ffmpeg-${ffmpeg_flag}"
done

# "Usage: $0 [--build=BUILD] [--host=HOST] [--prefix=PREFIX]"
# "  --build=BUILD    configure for building on BUILD"
# "  --host=HOST      cross-compile to build to run on HOST"
# "  --prefix=PREFIX  install files in PREFIX"
# "  --disable-FOO    configure to not build package FOO"
# "  --enable-FOO     configure to build package FOO"
# "  --disable-disc   configure to not build optical discs packages"
# "  --disable-net    configure to not build networking packages"
# "  --disable-sout   configure to not build stream output packages - aka BUILD_ENCODERS=false"
# "  --enable-small   optimize libraries for size with slight speed decrease [DANGEROUS]"
# "  --disable-gpl    configure to not build viral GPL code"
# "  --disable-gnuv3  configure to not build version 3 (L)GPL code"
# "  --enable-ad-clauses configure to build packages with advertising clauses"
# "                   (USE AT YOUR OWN LEGAL RISKS)"
# "  --disable-optim  disable optimization in libraries"

# --disable-gpl \
#     --enable-ad-clauses \
#     --disable-gnuv3 \ new added
#     --disable-disc \
#     --disable-sdl \
#     --disable-SDL_image \
#     --disable-iconv \
#     --enable-zvbi \ !!!
#     --disable-kate \
#     --disable-caca \
#     --disable-gettext \
#     --disable-mpcdec \
#     --enable-upnp \ !!!
#     --disable-gme \
#     --disable-srt \
#     --disable-tremor \
#     --enable-vorbis \ !!!
#     --disable-sidplay2 \
#     --disable-samplerate \
#     --disable-goom \
#     --disable-vncserver \
#     --disable-orc \
#     --disable-schroedinger \
#     --disable-libmpeg2 \
#     --disable-chromaprint \
#     --disable-mad \
#     --enable-fribidi \ !!!
#     --enable-libxml2 \
#     --enable-freetype2 \
#     --enable-ass \
#     --disable-fontconfig \
#     --disable-gpg-error \
#     --disable-vncclient \
#     --disable-gnutls \
#     --disable-lua \
#     --disable-luac \
#     --disable-aribb24 \
#     --disable-aribb25 \
#     --enable-vpx \ !!!
#     --enable-libdsm \
#     --enable-smb2 \ !!! new added
#     --enable-libplacebo \
#     --disable-sparkle \
#     --disable-growl \
#     --disable-breakpad \
#     --disable-ncurses \
#     --disable-asdcplib \
#     --enable-soxr \
#     --enable-taglib !!!

BOOTSTRAP_FLAGS="${BOOTSTRAP_FLAGS} \
--disable-gpl \
--enable-ad-clauses \
--disable-gnuv3 \
--disable-smb2 \
--disable-sout \
--disable-disc \
--disable-a52 \
--disable-aom \
--disable-aribb24 \
--disable-aribb25 \
--disable-asdcplib \
--enable-ass \
--disable-bluray \
--disable-bpg \
--disable-breakpad \
--disable-caca \
--disable-cddb \
--disable-chromaprint \
--disable-d3d9 \
--disable-d3d11 \
--disable-daala \
--disable-dav1d \
--disable-directx \
--enable-dvbpsi \
--disable-dvdcss \
--disable-dvdnav \
--disable-dvdread \
--disable-faad2 \
--disable-flac \
--disable-fluid \
--disable-fluidlite \
--disable-fontconfig \
--enable-freetype2 \
--disable-fribidi \
--disable-gettext \
--disable-gme \
--disable-gnutls \
--disable-goom \
--disable-gpg-error \
--disable-growl \
--disable-harfbuzz \
--disable-iconv \
--disable-jack \
--disable-jpeg \
--disable-kate \
--disable-lame \
--disable-libarchive \
--disable-libdsm \
--disable-libmpeg2 \
--enable-libplacebo \
--enable-libxml2 \
--disable-live555 \
--disable-lua \
--disable-mad \
--disable-matroska \
--disable-mfx \
--disable-microdns \
--disable-modplug \
--disable-mpcdec \
--disable-mpg123 \
--disable-ncurses \
--disable-nfs \
--disable-ogg \
--disable-openjpeg \
--disable-opus \
--disable-orc \
--disable-postproc \
--disable-projectM \
--disable-protobuf \
--disable-qt \
--disable-qtsvg \
--disable-samplerate \
--disable-schroedinger \
--disable-sdl \
--disable-SDL_image \
--disable-shout \
--disable-sidplay2 \
--enable-soxr \
--disable-sparkle \
--disable-spatialaudio \
--disable-speex \
--disable-speexdsp \
--disable-srt \
--disable-taglib \
--disable-theora \
--disable-tiff \
--disable-tiger \
--disable-tremor \
--disable-twolame \
--disable-upnp \
--disable-vncclient \
--disable-vncserver \
--disable-vorbis \
--disable-vpx \
--disable-zvbi \
--disable-x264 \
--disable-x265 \
--disable-gcrypt \
--disable-luac"

CONFIGURE_FLAGS="
--enable-static \
--disable-shared \
--disable-sse \
--disable-mmx" # sse and mmx optimisations disabled because of inconsistency between x86_64 and arm* architectures

MODULES_BLACKLIST="
stats
access_bd
shm
access_imem
oldrc
real
hotkeys
gestures
dynamicoverlay
rss
ball
marq
magnify
audiobargraph_
clone
mosaic
osdmenu
puzzle
mediadirs
t140
ripple
motion
sharpen
grain
posterize
mirror
wall
scene
blendbench
psychedelic
alphamask
netsync
audioscrobbler
motiondetect
motionblur
export
smf
podcast
bluescreen
erase
stream_filter_record
speex_resampler
remoteosd
magnify
gradient
logger
visual
fb
aout_file
invert
sepia
wave
hqdn3d
headphone_channel_mixer
gaussianblur
gradfun
extract
colorthres
antiflicker
anaglyph
remap
oldmovie
vhs
fingerprinter
output_udp
output_livehttp
harfbuzz
a52"

# stats
# access_bd
# shm
# access_imem
# oldrc
# real
# hotkeys
# gestures
# dynamicoverlay
# rss
# ball
# marq
# magnify
# audiobargraph_
# clone
# mosaic
# osdmenu
# puzzle
# mediadirs
# t140
# ripple
# motion
# sharpen
# grain
# posterize
# mirror
# wall
# scene
# blendbench
# psychedelic
# alphamask
# netsync
# audioscrobbler
# motiondetect
# motionblur
# export
# smf
# podcast
# bluescreen
# erase
# stream_filter_record
# speex_resampler
# remoteosd
# magnify
# gradient
# logger
# visual
# fb
# aout_file
# invert
# sepia
# wave
# hqdn3d
# headphone_channel_mixer
# gaussianblur
# gradfun
# extract
# colorthres
# antiflicker
# anaglyph
# remap
# oldmovie
# vhs
# fingerprinter
# output_udp
# output_livehttp

NOSCARY_MODULES_BLACKLIST="
dts
dvbsub
svcd
packetizer_mlp
vc1
uleaddvaudio
librar
libvoc
avio
chorus_flanger
smooth
cvdsub
libmod
dolby_surround
mpegaudio"
# libdash
# hevc
# libmpgv"


# --disable-macosx \
# --disable-macosx-qtkit \
# --disable-macosx-avfoundation \
# --enable-static \
# --disable-shared \
# --enable-opus \ !!!
# --disable-faad \
# --disable-lua \
# --disable-a52 \
# --enable-fribidi \ !!!
# --disable-qt --disable-skins2 \
# --disable-vcd \
# --disable-vlc \
# --disable-vlm \
# --disable-nls \
# --disable-sse \
# --disable-notify \
# --enable-live555 \ !!!
# --enable-realrtsp \ !!!
# --enable-swscale \
# --disable-projectm \
# --enable-libass \
# --enable-libxml2 \
# --disable-goom \
# --disable-dvdread \
# --disable-dvdnav \
# --disable-bluray \
# --disable-linsys \
# --disable-libva \
# --disable-gme \
# --disable-tremor \
# --enable-vorbis \ !!!
# --disable-fluidsynth \
# --disable-jack \
# --disable-pulse \
# --disable-mtp \
# --enable-ogg \ !!!
# --enable-speex \ !!!
# --enable-theora \ !!!
# --enable-flac \ !!!
# --disable-screen \
# --enable-freetype \
# --enable-taglib \ !!!
# --enable-smb2 \ new added
# --disable-mmx \
# --disable-sparkle \
# --disable-addonmanagermodules \
# --disable-mad

# # Optional Features and Packages:
#   # --disable-option-checking  ignore unrecognized --enable/--with options
#   # --disable-FEATURE       do not include FEATURE (same as --enable-FEATURE=no)
#   # --enable-FEATURE[=ARG]  include FEATURE [ARG=yes]
#   # --with-PACKAGE[=ARG]    use PACKAGE [ARG=yes]
#   # --without-PACKAGE       do not use PACKAGE (same as --with-PACKAGE=no)
#   # --enable-silent-rules   less verbose build output (undo: "make V=1")
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-silent-rules" # verbose build output (undo: "make V=0")
#   # --disable-maintainer-mode  # disable make rules and dependencies not useful (and sometimes confusing) to the casual installer
#   # --enable-dependency-tracking # do not reject slow dependency extractors
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-dependency-tracking" # speeds up one-time build
#   # --with-binary-version=STRING  #To avoid plugins cache problem between binary version
#   # --with-macosx-sdk=DIR   compile using the SDK in DIR
#   # --with-macosx-version-min=VERSION # compile for Mac OS X VERSION and above
#   # --enable-winstore-app   Build targetted for Windows Store apps (default disabled)
#   # --with-contrib=DIR      search for 3rd party libraries in DIR/include and DIR/lib
#
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-shared=no" #[=PKGS] build shared libraries [default=yes]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-static=yes"  # --enable-static #[=PKGS]  build static libraries [default=no]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --with-pic=yes" # [=PKGS] try to use only PIC/non-PIC objects [default=use both] position independent code. see - https://en.wikipedia.org/wiki/Position-independent_code
#
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-fast-install=yes" # [=PKGS] optimize for fast installation [default=yes]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --with-aix-soname=aix" # aix|svr4|both shared library versioning (aka "SONAME") variant to provide on AIX, [default=aix].
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --with-gnu-ld=no" # assume the C compiler uses GNU ld [default=no]
#   # --with-sysroot[=DIR]    Search for dependent libraries within DIR (or the
#   #                         compiler's sysroot if not specified).
#   # --disable-libtool-lock  avoid locking (might break parallel builds)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-nls" # do not use Native Language Support
#
#   # --disable-rpath         do not hardcode runtime library paths
#   # --with-libiconv-prefix[=DIR]  search for libiconv in DIR/include and DIR/lib
#   # --without-libiconv-prefix     don't search for libiconv in includedir and libdir
#   # --with-libintl-prefix[=DIR]  search for libintl in DIR/include and DIR/lib
#   # --without-libintl-prefix     don't search for libintl in includedir and libdir
#   # --with-libfuzzer=DIR    use libFuzzer library from DIR and triggers sanitize coverage (default disabled)
#
#   # --enable-dbus           compile D-Bus message bus support (default enabled)
# # Optimization options:
#   # --enable-debug          build with run-time assertions (default disabled)
#   # --enable-gprof          profile with gprof (default disabled)
#   # --enable-cprof          profile with cprof (default disabled)
#   # --enable-coverage       build for test coverage (default disabled)
#   # --with-sanitizer=(address/memory/undefined/thread)  build with sanitizer flags (default disabled)

# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-optimizations" # compiler optimizations (default enabled)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mmx" # disable MMX optimizations (default auto)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-sse" # disable SSE (1-4) optimizations (default auto)
#   # --disable-neon          disable NEON optimizations (default auto)
#   # --disable-arm64         disable arm 64-bit optimizations (default auto)
#   # --disable-altivec       disable AltiVec optimizations (default auto)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-optimize-memory" # optimize memory usage over performance
#   # --enable-run-as-root    allow running VLC as root (default disabled)
#   # --disable-sout          disable streaming output (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-lua" # disable LUA scripting support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vlm" # disable the stream manager (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-addonmanagermodules" # disable the addons manager modules (default enabled)
# # Input plugins:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-archive" # (libarchive support) [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-live555" # RTSP input through live555 (default enabled)
#   # --enable-dc1394         IIDC FireWire input module [default=auto]
#   # --enable-dv1394         DV FireWire input module [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-linsys" # Linux Linear Systems Ltd. SDI and HD-SDI input cards (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-dvdread" #dvdread input module [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-dvdnav" #DVD with navigation input module (dvdnav) [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-bluray" #(libbluray for Blu-ray disc support ) [default=auto]
#   # --enable-opencv         (OpenCV (computer vision) filter) [default=auto]
#   # --enable-smbclient      (SMB/CIFS support) [default=auto]
#   # CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-dsm" # libdsm SMB/CIFS access/sd module [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-dsm" # libdsm SMB/CIFS access/sd module [default=auto]
#   # --enable-sftp           (support SFTP file transfer via libssh2)                          [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS}  --disable-nfs" # (support nfs protocol via libnfs) [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS}  --disable-v4l2" #  disable Video4Linux version 2 (default auto)
#   # --disable-decklink      disable Blackmagic DeckLink SDI input (default auto)
#   # --with-decklink-sdk=DIR   location of Blackmagic DeckLink SDI SDK)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vcd" #disable built-in VCD and CD-DA support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-libcddb" #disable CDDB for Audio CD (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-screen" # disable screen capture (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vnc" # (VNC/rfb client support) [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-freerdp" #(RDP/Remote Desktop client support) [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-realrtsp" # Real RTSP module (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-macosx-qtkit" # Mac OS X qtsound (audio) module (default enabled on Mac OS X <= v10.11)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-macosx-avfoundation" # Mac OS X avcapture (video) module (default enabled on Mac OS X)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-asdcp" # build with asdcp support enabled [default=auto]
# # Mux/Demux plugins:
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-dvbpsi" # build with dvbpsi support enabled [default=auto] MPEG-TS support
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-gme" #use Game Music Emu (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-sid" # C64 sid demux support (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-ogg" # Ogg demux support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-shout" # libshout output plugin [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-matroska" # MKV format support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mod" # do not use libmodplug (default auto)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mpc" #  do not use libmpcdec (default auto)
#
# # Codec plugins:
#   # --enable-wma-fixed      libwma-fixed module (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-shine" #  MPEG Audio Layer 3 encoder [default=auto]
#   # --enable-omxil          openmax il codec module (default disabled)
#   # --enable-omxil-vout     openmax il video output module (default disabled)
#   # --enable-rpi-omxil     openmax il configured for raspberry pi (default disabled)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-crystalhd" # crystalhd codec plugin (default auto)
#   # --with-mad=PATH         path to libmad
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mad" # libmad module (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mpg123" #  libmpg123 decoder support [default=auto]
#   # --enable-gst-decode     GStreamer based decoding support (currently supports only video decoding) (default auto)
#
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-merge-ffmpeg" # merge FFmpeg-based plugins (default disabled)
# # CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-avcodec" # libavcodec codec (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-libva" # VAAPI GPU decoding support (libVA) (default auto)
#   # --enable-dxva2          DxVA2 GPU decoding support (default auto)
#   # --enable-d3d11va          D3D11 GPU decoding support (default auto)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-avformat" # libavformat containers (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-swscale" # libswscale image scaling and conversion (default enabled) need for screenshot on ios
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-postproc" # libpostproc image post-processing (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-faad" # faad codec (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-aom" # experimental AV1 codec (default auto) [default=auto] It can have 20% higher data compression than VP9 or HEVC/H.265 from the Moving Picture Experts Group and about 50% higher than the widely used AVC
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-dav1d" # AV1 decoder (default auto) [default=auto] AV1 is intended for use in HTML5 web video and WebRTC together with the Opus audio format. more info - https://en.wikipedia.org/wiki/AV1
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vpx" # libvpx VP8/VP9 encoder and decoder (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-twolame" # MPEG Audio Layer 2 encoder [default=auto]
#   # --enable-fdkaac         FDK-AAC encoder [default=disabled]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-a52" # A/52 support with liba52 (default enabled)
#   # --with-a52=PATH         a52 headers and libraries
#   # --enable-dca            DTS Coherent Acoustics support with libdca [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-flac" # libflac decoder/encoder support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-libmpeg2" #libmpeg2 decoder support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vorbis" # Vorbis decoder and encoder [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-tremor" # Tremor decoder support (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-speex" # Speex support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-opus" # Opus support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-spatialaudio" #Ambisonic channel mixer and binauralizer [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-theora" # experimental theora codec [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-oggspots" #  experimental OggSpots codec [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-daala" # experimental daala codec [default=disabled]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-schroedinger" # dirac decoder and encoder using schroedinger [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-png" #PNG support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-jpeg" # JPEG support (default enabled)
#   # --enable-bpg           BPG support (default disabled)
#   # --enable-x262           H262 encoding support with static libx262 (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-x265" # HEVC/H.265 encoder [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-x264" #H264 encoding support with libx264 (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-x26410b" #  H264 10-bit encoding support with libx264 (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mfx" # Intel QuickSync MPEG4-Part10/MPEG2 (aka H.264/H.262)  encoder [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-fluidsynth" # MIDI synthetiser with libfluidsynth [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-fluidlite" # MIDI synthetiser with libfluidsynth [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-zvbi" # VBI (inc. Teletext) decoding support with libzvbi (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-telx" # Teletext decoding module (conflicting with zvbi) (default enabled if zvbi is absent)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-libass" # Subtitle support using libass (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-aribsub" #ARIB Subtitles support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-aribb25" #ARIB STD-B25 [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-kate" # kate codec [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-tiger" # Tiger rendering library for Kate streams (default auto)
#   # --enable-css            CSS selector engine (default auto)
#
# # Video plugins:
#   # --enable-gles2          OpenGL ES v2 support [default=disabled]
#   # --with-x                use the X Window System
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-xcb"  #X11 support with XCB (default enabled)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-xvideo" #XVideo support (default enabled)
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vdpau" #VDPAU hardware support (default auto)
#   # --enable-wayland        Incomplete Wayland support (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-sdl-image" #SDL image support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-freetype" # freetype support   (default auto) for drawtext filter
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-fribidi" # fribidi support    (default auto) for drawtext filter
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-harfbuzz" # harfbuzz support   (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-fontconfig" # fontconfig support (default auto) for drawtext filter
#   # --with-default-font=PATH  Path to the default font
#   # --with-default-monospace-font=PATH Path to the default font
#   # --with-default-font-family=NAME Path to the default font family
#   # --with-default-monospace-font-family=NAME  Path to the default font family
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-svg" # SVG rendering library [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-svgdec" # SVG image decoder library [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-directx" # Microsoft DirectX support (default enabled on Windows)
#   # --enable-aa             aalib output (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-caca" # libcaca output [default=auto]
#   # --enable-kva            support the K Video Accelerator KVA (default enabled on OS/2)
#   # --enable-mmal           Multi-Media Abstraction Layer (MMAL) hardware plugin  (default enabled)
#   # --enable-evas           use evas output module (default disabled)
#
# # Audio plugins:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-pulse" # use the PulseAudio client library (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-alsa" # support the Advanced Linux Sound Architecture (default auto)
#   # --enable-oss            support the Open Sound System OSS (default enabled on FreeBSD/NetBSD/DragonFlyBSD)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-sndio" # support the OpenBSD sndio (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-wasapi" # use the Windows Audio Session API (default auto)
#
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-jack" # do not use jack (default auto)
#   # --enable-opensles       Android OpenSL ES audio module (default disabled)
#   # --enable-tizen-audio    Tizen audio module (default enabled on Tizen)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-samplerate" # Resampler with libsamplerate [default=auto]  is a library for performing sample rate conversion of audio data.
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-soxr" # SoX Resampler library [default=auto]
#   # --enable-kai            support the K Audio Interface KAI (default enabled on OS/2)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-chromaprint" # (Chromaprint based audio fingerprinter) [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-chromecast" # (Chromecast streaming support) [default=auto]
#
# # Interface plugins:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-qt" # Qt UI support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-skins2" #skins interface module (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-libtar" #libtar support for skins2 (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-macosx" #Mac OS X gui support (default enabled on Mac OS X)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-sparkle" # Sparkle update support for OS X (default enabled on Mac OS X)
#   # --with-breakpad=URL     Enable Breakpad reporter using given URL
# # CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-minimal-macosx" #Minimal Mac OS X support (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-ncurses" # ncurses text-based interface (default auto)
#   # --enable-lirc           lirc support (default disabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-srt" # SRT input/output plugin [default=auto]
#
# # Visualisations and Video filter plugins:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-goom" # goom visualization plugin [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-projectm" # projectM visualization plugin (default enabled)
#   # --enable-vsxu           Vovoid VSXu visualization plugin (default auto)
#
# # Service Discovery plugins:
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-avahi" #    Zeroconf services discovery [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-udev" #    Linux udev services discovery [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mtp" # MTP devices support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-upnp" # Intel UPNP SDK [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-microdns" # mDNS services discovery [default=auto]
#
# # Misc options:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-libxml2" #libxml2 support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-libgcrypt" #gcrypt support (default enabled) needed ssh2 and for rtmp(t)e support
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-gnutls" #GNU TLS TLS/SSL support (default enabled) needed for https support if openssl is not used
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-taglib" #do not use TagLib (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-smb2" # new added 


#   # --enable-secret         use libsecret for keystore [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-notify" #libnotify notification [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-libplacebo" # disable libplacebo support (default auto)
# # Components:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vlc" # build the VLC media player (default enabled)
