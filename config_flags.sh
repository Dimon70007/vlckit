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

# unrecognized option --with-minimal, --disable-dependency-tracking, --disable-docs, --disable-gpg-error


BOOTSTRAP_FLAGS="${BOOTSTRAP_FLAGS} \
--disable-gpl \
--enable-ad-clauses \
--disable-doc \
--disable-htmlpages \
--disable-manpages \
--disable-podpages \
--disable-txtpages \
--disable-sout \
--disable-disc \
--disable-a52 \
--disable-aom \
--disable-aribb24 \
--disable-aribb25 \
--disable-asdcplib \
--disable-ass \
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
--enable-libdsm \
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
--disable-x264 \
--disable-x265 \
--disable-zvbi \
--disable-luac"


CONFIGURE_FLAGS="
--enable-static=yes \
--enable-shared=no \
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
demuxdump
fingerprinter
output_udp
output_livehttp
a52"

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
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-linsys" # Linux Linear Systems Ltd. SDI and HD-SDI input cards (default enabled)
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
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-dvbpsi" # build with dvbpsi support enabled [default=auto] MPEG-TS support
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
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-png" #PNG support (default enabled)
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
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-libass" # Subtitle support using libass (default enabled)
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
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-freetype" # freetype support   (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-fribidi" # fribidi support    (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-harfbuzz" # harfbuzz support   (default auto)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-fontconfig" # fontconfig support (default auto)
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
#   # --enable-avahi          Zeroconf services discovery [default=auto]
#   # --enable-udev           Linux udev services discovery [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-mtp" # MTP devices support [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-upnp" # Intel UPNP SDK [default=auto]
#   # --enable-microdns       mDNS services discovery [default=auto]
#
# # Misc options:
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-libxml2" #libxml2 support [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-libgcrypt" #gcrypt support (default enabled) may be candidate for disabling
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-gnutls" #GNU TLS TLS/SSL support (default enabled)
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-taglib" #do not use TagLib (default enabled)
#   # --enable-secret         use libsecret for keystore [default=auto]
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-notify" #libnotify notification [default=auto]
# CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --enable-libplacebo" # disable libplacebo support (default auto)
# # Components:
CONFIGURE_FLAGS="${CONFIGURE_FLAGS} --disable-vlc" # build the VLC media player (default enabled)


# Some influential environment variables:
#   CC          C compiler command
#   CFLAGS      C compiler flags
#   LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a nonstandard directory <lib dir>
#   LIBS        libraries to pass to the linker, e.g. -l<library>
#   CPPFLAGS    (Objective) C/C++ preprocessor flags, e.g. -I<include dir> if
#               you have headers in a nonstandard directory <include dir>
#   CPP         C preprocessor
#   CXX         C++ compiler command
#   CXXFLAGS    C++ compiler flags
#   OBJC        Objective C compiler command
#   OBJCFLAGS   Objective C compiler flags
#   CCAS        assembler compiler command (defaults to CC)
#   CCASFLAGS   assembler compiler flags (defaults to CFLAGS)
#   YACC        The `Yet Another Compiler Compiler' implementation to use.
#               Defaults to the first program found out of: `bison -y', `byacc',
#               `yacc'.
#   YFLAGS      The list of arguments that will be passed by default to $YACC.
#               This script will default YFLAGS to the empty string to avoid a
#               default value of `-d' given by some make applications.
#   DESKTOP_FILE_VALIDATE
#               Validator for desktop entry files
#   BUILDCC     Build system C11 or C99 compiler command
#   CXXCPP      C++ preprocessor
#   PKG_CONFIG_PATH
#               Paths where to find .pc not at the default location
#   PKG_CONFIG  path to pkg-config utility
#   PKG_CONFIG_LIBDIR
#               path overriding pkg-config's built-in search path
#   MINIZIP_CFLAGS
#               C compiler flags for MINIZIP, overriding pkg-config
#   MINIZIP_LIBS
#               linker flags for MINIZIP, overriding pkg-config
#   IDN_CFLAGS  C compiler flags for IDN, overriding pkg-config
#   IDN_LIBS    linker flags for IDN, overriding pkg-config
#   DBUS_CFLAGS C compiler flags for DBUS, overriding pkg-config
#   DBUS_LIBS   linker flags for DBUS, overriding pkg-config
#   SYSTEMD_CFLAGS
#               C compiler flags for SYSTEMD, overriding pkg-config
#   SYSTEMD_LIBS
#               linker flags for SYSTEMD, overriding pkg-config
#   LUA_CFLAGS  C compiler flags for LUA, overriding pkg-config
#   LUA_LIBS    linker flags for LUA, overriding pkg-config
#   LUAC        LUA byte compiler
#   ARCHIVE_CFLAGS
#               C compiler flags for ARCHIVE, overriding pkg-config
#   ARCHIVE_LIBS
#               linker flags for ARCHIVE, overriding pkg-config
#   LIVE555_CFLAGS
#               C compiler flags for LIVE555, overriding pkg-config
#   LIVE555_LIBS
#               linker flags for LIVE555, overriding pkg-config
#   DC1394_CFLAGS
#               C compiler flags for DC1394, overriding pkg-config
#   DC1394_LIBS linker flags for DC1394, overriding pkg-config
#   DV1394_CFLAGS
#               C compiler flags for DV1394, overriding pkg-config
#   DV1394_LIBS linker flags for DV1394, overriding pkg-config
#   LINSYS_SDI_CFLAGS
#               C compiler flags for LINSYS_SDI, overriding pkg-config
#   LINSYS_SDI_LIBS
#               linker flags for LINSYS_SDI, overriding pkg-config
#   DVDREAD_CFLAGS
#               C compiler flags for DVDREAD, overriding pkg-config
#   DVDREAD_LIBS
#               linker flags for DVDREAD, overriding pkg-config
#   DVDNAV_CFLAGS
#               C compiler flags for DVDNAV, overriding pkg-config
#   DVDNAV_LIBS linker flags for DVDNAV, overriding pkg-config
#   BLURAY_CFLAGS
#               C compiler flags for BLURAY, overriding pkg-config
#   BLURAY_LIBS linker flags for BLURAY, overriding pkg-config
#   OPENCV_CFLAGS
#               C compiler flags for OPENCV, overriding pkg-config
#   OPENCV_LIBS linker flags for OPENCV, overriding pkg-config
#   SMBCLIENT_CFLAGS
#               C compiler flags for SMBCLIENT, overriding pkg-config
#   SMBCLIENT_LIBS
#               linker flags for SMBCLIENT, overriding pkg-config
#   DSM_CFLAGS  C compiler flags for DSM, overriding pkg-config
#   DSM_LIBS    linker flags for DSM, overriding pkg-config
#   SFTP_CFLAGS C compiler flags for SFTP, overriding pkg-config
#   SFTP_LIBS   linker flags for SFTP, overriding pkg-config
#   NFS_CFLAGS  C compiler flags for NFS, overriding pkg-config
#   NFS_LIBS    linker flags for NFS, overriding pkg-config
#   SMB2_CFLAGS C compiler flags for SMB2, overriding pkg-config
#   SMB2_LIBS   linker flags for SMB2, overriding pkg-config
#   LIBCDDB_CFLAGS
#               C compiler flags for LIBCDDB, overriding pkg-config
#   LIBCDDB_LIBS
#               linker flags for LIBCDDB, overriding pkg-config
#   VNC_CFLAGS  C compiler flags for VNC, overriding pkg-config
#   VNC_LIBS    linker flags for VNC, overriding pkg-config
#   FREERDP_CFLAGS
#               C compiler flags for FREERDP, overriding pkg-config
#   FREERDP_LIBS
#               linker flags for FREERDP, overriding pkg-config
#   OBJCPP      Objective C preprocessor
#   ASDCP_CFLAGS
#               C compiler flags for ASDCP, overriding pkg-config
#   ASDCP_LIBS  linker flags for ASDCP, overriding pkg-config
#   DVBPSI_CFLAGS
#               C compiler flags for DVBPSI, overriding pkg-config
#   DVBPSI_LIBS linker flags for DVBPSI, overriding pkg-config
#   SID_CFLAGS  C compiler flags for SID, overriding pkg-config
#   SID_LIBS    linker flags for SID, overriding pkg-config
#   OGG_CFLAGS  C compiler flags for OGG, overriding pkg-config
#   OGG_LIBS    linker flags for OGG, overriding pkg-config
#   LIBVORBIS_CFLAGS
#               C compiler flags for LIBVORBIS, overriding pkg-config
#   LIBVORBIS_LIBS
#               linker flags for LIBVORBIS, overriding pkg-config
#   SHOUT_CFLAGS
#               C compiler flags for SHOUT, overriding pkg-config
#   SHOUT_LIBS  linker flags for SHOUT, overriding pkg-config
#   MATROSKA_CFLAGS
#               C compiler flags for MATROSKA, overriding pkg-config
#   MATROSKA_LIBS
#               linker flags for MATROSKA, overriding pkg-config
#   LIBMODPLUG_CFLAGS
#               C compiler flags for LIBMODPLUG, overriding pkg-config
#   LIBMODPLUG_LIBS
#               linker flags for LIBMODPLUG, overriding pkg-config
#   SHINE_CFLAGS
#               C compiler flags for SHINE, overriding pkg-config
#   SHINE_LIBS  linker flags for SHINE, overriding pkg-config
#   MPG123_CFLAGS
#               C compiler flags for MPG123, overriding pkg-config
#   MPG123_LIBS linker flags for MPG123, overriding pkg-config
#   GST_APP_CFLAGS
#               C compiler flags for GST_APP, overriding pkg-config
#   GST_APP_LIBS
#               linker flags for GST_APP, overriding pkg-config
#   GST_VIDEO_CFLAGS
#               C compiler flags for GST_VIDEO, overriding pkg-config
#   GST_VIDEO_LIBS
#               linker flags for GST_VIDEO, overriding pkg-config
#   AVCODEC_CFLAGS
#               C compiler flags for AVCODEC, overriding pkg-config
#   AVCODEC_LIBS
#               linker flags for AVCODEC, overriding pkg-config
#   LIBVA_CFLAGS
#               C compiler flags for LIBVA, overriding pkg-config
#   LIBVA_LIBS  linker flags for LIBVA, overriding pkg-config
#   LIBVA_DRM_CFLAGS
#               C compiler flags for LIBVA_DRM, overriding pkg-config
#   LIBVA_DRM_LIBS
#               linker flags for LIBVA_DRM, overriding pkg-config
#   LIBVA_X11_CFLAGS
#               C compiler flags for LIBVA_X11, overriding pkg-config
#   LIBVA_X11_LIBS
#               linker flags for LIBVA_X11, overriding pkg-config
#   LIBVA_WL_CFLAGS
#               C compiler flags for LIBVA_WL, overriding pkg-config
#   LIBVA_WL_LIBS
#               linker flags for LIBVA_WL, overriding pkg-config
#   AVFORMAT_CFLAGS
#               C compiler flags for AVFORMAT, overriding pkg-config
#   AVFORMAT_LIBS
#               linker flags for AVFORMAT, overriding pkg-config
#   SWSCALE_CFLAGS
#               C compiler flags for SWSCALE, overriding pkg-config
#   SWSCALE_LIBS
#               linker flags for SWSCALE, overriding pkg-config
#   POSTPROC_CFLAGS
#               C compiler flags for POSTPROC, overriding pkg-config
#   POSTPROC_LIBS
#               linker flags for POSTPROC, overriding pkg-config
#   AOM_CFLAGS  C compiler flags for AOM, overriding pkg-config
#   AOM_LIBS    linker flags for AOM, overriding pkg-config
#   DAV1D_CFLAGS
#               C compiler flags for DAV1D, overriding pkg-config
#   DAV1D_LIBS  linker flags for DAV1D, overriding pkg-config
#   VPX_CFLAGS  C compiler flags for VPX, overriding pkg-config
#   VPX_LIBS    linker flags for VPX, overriding pkg-config
#   TWOLAME_CFLAGS
#               C compiler flags for TWOLAME, overriding pkg-config
#   TWOLAME_LIBS
#               linker flags for TWOLAME, overriding pkg-config
#   FDKAAC_CFLAGS
#               C compiler flags for FDKAAC, overriding pkg-config
#   FDKAAC_LIBS linker flags for FDKAAC, overriding pkg-config
#   DCA_CFLAGS  C compiler flags for DCA, overriding pkg-config
#   DCA_LIBS    linker flags for DCA, overriding pkg-config
#   FLAC_CFLAGS C compiler flags for FLAC, overriding pkg-config
#   FLAC_LIBS   linker flags for FLAC, overriding pkg-config
#   LIBMPEG2_CFLAGS
#               C compiler flags for LIBMPEG2, overriding pkg-config
#   LIBMPEG2_LIBS
#               linker flags for LIBMPEG2, overriding pkg-config
#   VORBIS_CFLAGS
#               C compiler flags for VORBIS, overriding pkg-config
#   VORBIS_LIBS linker flags for VORBIS, overriding pkg-config
#   SPEEX_CFLAGS
#               C compiler flags for SPEEX, overriding pkg-config
#   SPEEX_LIBS  linker flags for SPEEX, overriding pkg-config
#   SPEEXDSP_CFLAGS
#               C compiler flags for SPEEXDSP, overriding pkg-config
#   SPEEXDSP_LIBS
#               linker flags for SPEEXDSP, overriding pkg-config
#   OPUS_CFLAGS C compiler flags for OPUS, overriding pkg-config
#   OPUS_LIBS   linker flags for OPUS, overriding pkg-config
#   SPATIALAUDIO_CFLAGS
#               C compiler flags for SPATIALAUDIO, overriding pkg-config
#   SPATIALAUDIO_LIBS
#               linker flags for SPATIALAUDIO, overriding pkg-config
#   THEORA_CFLAGS
#               C compiler flags for THEORA, overriding pkg-config
#   THEORA_LIBS linker flags for THEORA, overriding pkg-config
#   OGGSPOTS_CFLAGS
#               C compiler flags for OGGSPOTS, overriding pkg-config
#   OGGSPOTS_LIBS
#               linker flags for OGGSPOTS, overriding pkg-config
#   DAALA_CFLAGS
#               C compiler flags for DAALA, overriding pkg-config
#   DAALA_LIBS  linker flags for DAALA, overriding pkg-config
#   SCHROEDINGER_CFLAGS
#               C compiler flags for SCHROEDINGER, overriding pkg-config
#   SCHROEDINGER_LIBS
#               linker flags for SCHROEDINGER, overriding pkg-config
#   X262_CFLAGS C compiler flags for X262, overriding pkg-config
#   X262_LIBS   linker flags for X262, overriding pkg-config
#   X265_CFLAGS C compiler flags for X265, overriding pkg-config
#   X265_LIBS   linker flags for X265, overriding pkg-config
#   X264_CFLAGS C compiler flags for X264, overriding pkg-config
#   X264_LIBS   linker flags for X264, overriding pkg-config
#   X26410b_CFLAGS
#               C compiler flags for X26410b, overriding pkg-config
#   X26410b_LIBS
#               linker flags for X26410b, overriding pkg-config
#   MFX_CFLAGS  C compiler flags for MFX, overriding pkg-config
#   MFX_LIBS    linker flags for MFX, overriding pkg-config
#   FLUIDSYNTH_CFLAGS
#               C compiler flags for FLUIDSYNTH, overriding pkg-config
#   FLUIDSYNTH_LIBS
#               linker flags for FLUIDSYNTH, overriding pkg-config
#   FLUIDLITE_CFLAGS
#               C compiler flags for FLUIDLITE, overriding pkg-config
#   FLUIDLITE_LIBS
#               linker flags for FLUIDLITE, overriding pkg-config
#   ZVBI_CFLAGS C compiler flags for ZVBI, overriding pkg-config
#   ZVBI_LIBS   linker flags for ZVBI, overriding pkg-config
#   LIBASS_CFLAGS
#               C compiler flags for LIBASS, overriding pkg-config
#   LIBASS_LIBS linker flags for LIBASS, overriding pkg-config
#   ARIBB24_CFLAGS
#               C compiler flags for ARIBB24, overriding pkg-config
#   ARIBB24_LIBS
#               linker flags for ARIBB24, overriding pkg-config
#   ARIBB25_CFLAGS
#               C compiler flags for ARIBB25, overriding pkg-config
#   ARIBB25_LIBS
#               linker flags for ARIBB25, overriding pkg-config
#   KATE_CFLAGS C compiler flags for KATE, overriding pkg-config
#   KATE_LIBS   linker flags for KATE, overriding pkg-config
#   TIGER_CFLAGS
#               C compiler flags for TIGER, overriding pkg-config
#   TIGER_LIBS  linker flags for TIGER, overriding pkg-config
#   EGL_CFLAGS  C compiler flags for EGL, overriding pkg-config
#   EGL_LIBS    linker flags for EGL, overriding pkg-config
#   GL_CFLAGS   C compiler flags for GL, overriding pkg-config
#   GL_LIBS     linker flags for GL, overriding pkg-config
#   GLES2_CFLAGS
#               C compiler flags for GLES2, overriding pkg-config
#   GLES2_LIBS  linker flags for GLES2, overriding pkg-config
#   XMKMF       Path to xmkmf, Makefile generator for X Window System
#   XCB_CFLAGS  C compiler flags for XCB, overriding pkg-config
#   XCB_LIBS    linker flags for XCB, overriding pkg-config
#   XCB_SHM_CFLAGS
#               C compiler flags for XCB_SHM, overriding pkg-config
#   XCB_SHM_LIBS
#               linker flags for XCB_SHM, overriding pkg-config
#   XCB_COMPOSITE_CFLAGS
#               C compiler flags for XCB_COMPOSITE, overriding pkg-config
#   XCB_COMPOSITE_LIBS
#               linker flags for XCB_COMPOSITE, overriding pkg-config
#   XPROTO_CFLAGS
#               C compiler flags for XPROTO, overriding pkg-config
#   XPROTO_LIBS linker flags for XPROTO, overriding pkg-config
#   XCB_XV_CFLAGS
#               C compiler flags for XCB_XV, overriding pkg-config
#   XCB_XV_LIBS linker flags for XCB_XV, overriding pkg-config
#   XCB_RANDR_CFLAGS
#               C compiler flags for XCB_RANDR, overriding pkg-config
#   XCB_RANDR_LIBS
#               linker flags for XCB_RANDR, overriding pkg-config
#   XCB_KEYSYMS_CFLAGS
#               C compiler flags for XCB_KEYSYMS, overriding pkg-config
#   XCB_KEYSYMS_LIBS
#               linker flags for XCB_KEYSYMS, overriding pkg-config
#   VDPAU_CFLAGS
#               C compiler flags for VDPAU, overriding pkg-config
#   VDPAU_LIBS  linker flags for VDPAU, overriding pkg-config
#   WAYLAND_CLIENT_CFLAGS
#               C compiler flags for WAYLAND_CLIENT, overriding pkg-config
#   WAYLAND_CLIENT_LIBS
#               linker flags for WAYLAND_CLIENT, overriding pkg-config
#   WAYLAND_EGL_CFLAGS
#               C compiler flags for WAYLAND_EGL, overriding pkg-config
#   WAYLAND_EGL_LIBS
#               linker flags for WAYLAND_EGL, overriding pkg-config
#   SDL_IMAGE_CFLAGS
#               C compiler flags for SDL_IMAGE, overriding pkg-config
#   SDL_IMAGE_LIBS
#               linker flags for SDL_IMAGE, overriding pkg-config
#   FREETYPE_CFLAGS
#               C compiler flags for FREETYPE, overriding pkg-config
#   FREETYPE_LIBS
#               linker flags for FREETYPE, overriding pkg-config
#   FONTCONFIG_CFLAGS
#               C compiler flags for FONTCONFIG, overriding pkg-config
#   FONTCONFIG_LIBS
#               linker flags for FONTCONFIG, overriding pkg-config
#   FRIBIDI_CFLAGS
#               C compiler flags for FRIBIDI, overriding pkg-config
#   FRIBIDI_LIBS
#               linker flags for FRIBIDI, overriding pkg-config
#   HARFBUZZ_CFLAGS
#               C compiler flags for HARFBUZZ, overriding pkg-config
#   HARFBUZZ_LIBS
#               linker flags for HARFBUZZ, overriding pkg-config
#   SVG_CFLAGS  C compiler flags for SVG, overriding pkg-config
#   SVG_LIBS    linker flags for SVG, overriding pkg-config
#   SVGDEC_CFLAGS
#               C compiler flags for SVGDEC, overriding pkg-config
#   SVGDEC_LIBS linker flags for SVGDEC, overriding pkg-config
#   CACA_CFLAGS C compiler flags for CACA, overriding pkg-config
#   CACA_LIBS   linker flags for CACA, overriding pkg-config
#   EVAS_CFLAGS C compiler flags for EVAS, overriding pkg-config
#   EVAS_LIBS   linker flags for EVAS, overriding pkg-config
#   PULSE_CFLAGS
#               C compiler flags for PULSE, overriding pkg-config
#   PULSE_LIBS  linker flags for PULSE, overriding pkg-config
#   ALSA_CFLAGS C compiler flags for ALSA, overriding pkg-config
#   ALSA_LIBS   linker flags for ALSA, overriding pkg-config
#   JACK_CFLAGS C compiler flags for JACK, overriding pkg-config
#   JACK_LIBS   linker flags for JACK, overriding pkg-config
#   SAMPLERATE_CFLAGS
#               C compiler flags for SAMPLERATE, overriding pkg-config
#   SAMPLERATE_LIBS
#               linker flags for SAMPLERATE, overriding pkg-config
#   SOXR_CFLAGS C compiler flags for SOXR, overriding pkg-config
#   SOXR_LIBS   linker flags for SOXR, overriding pkg-config
#   CHROMAPRINT_CFLAGS
#               C compiler flags for CHROMAPRINT, overriding pkg-config
#   CHROMAPRINT_LIBS
#               linker flags for CHROMAPRINT, overriding pkg-config
#   PROTOC      protobuf compiler
#   CHROMECAST_CFLAGS
#               C compiler flags for CHROMECAST, overriding pkg-config
#   CHROMECAST_LIBS
#               linker flags for CHROMECAST, overriding pkg-config
#   QT_CFLAGS   C compiler flags for QT, overriding pkg-config
#   QT_LIBS     linker flags for QT, overriding pkg-config
#   QT5_X11_CFLAGS
#               C compiler flags for QT5_X11, overriding pkg-config
#   QT5_X11_LIBS
#               linker flags for QT5_X11, overriding pkg-config
#   KDE4_CONFIG kde4-config utility
#   XPM_CFLAGS  C compiler flags for XPM, overriding pkg-config
#   XPM_LIBS    linker flags for XPM, overriding pkg-config
#   XINERAMA_CFLAGS
#               C compiler flags for XINERAMA, overriding pkg-config
#   XINERAMA_LIBS
#               linker flags for XINERAMA, overriding pkg-config
#   XEXT_CFLAGS C compiler flags for XEXT, overriding pkg-config
#   XEXT_LIBS   linker flags for XEXT, overriding pkg-config
#   BREAKPAD_CFLAGS
#               C compiler flags for BREAKPAD, overriding pkg-config
#   BREAKPAD_LIBS
#               linker flags for BREAKPAD, overriding pkg-config
#   NCURSES_CFLAGS
#               C compiler flags for NCURSES, overriding pkg-config
#   NCURSES_LIBS
#               linker flags for NCURSES, overriding pkg-config
#   SRT_CFLAGS  C compiler flags for SRT, overriding pkg-config
#   SRT_LIBS    linker flags for SRT, overriding pkg-config
#   GOOM_CFLAGS C compiler flags for GOOM, overriding pkg-config
#   GOOM_LIBS   linker flags for GOOM, overriding pkg-config
#   PROJECTM_CFLAGS
#               C compiler flags for PROJECTM, overriding pkg-config
#   PROJECTM_LIBS
#               linker flags for PROJECTM, overriding pkg-config
#   VSXU_CFLAGS C compiler flags for VSXU, overriding pkg-config
#   VSXU_LIBS   linker flags for VSXU, overriding pkg-config
#   AVAHI_CFLAGS
#               C compiler flags for AVAHI, overriding pkg-config
#   AVAHI_LIBS  linker flags for AVAHI, overriding pkg-config
#   UDEV_CFLAGS C compiler flags for UDEV, overriding pkg-config
#   UDEV_LIBS   linker flags for UDEV, overriding pkg-config
#   MTP_CFLAGS  C compiler flags for MTP, overriding pkg-config
#   MTP_LIBS    linker flags for MTP, overriding pkg-config
#   UPNP_CFLAGS C compiler flags for UPNP, overriding pkg-config
#   UPNP_LIBS   linker flags for UPNP, overriding pkg-config
#   MICRODNS_CFLAGS
#               C compiler flags for MICRODNS, overriding pkg-config
#   MICRODNS_LIBS
#               linker flags for MICRODNS, overriding pkg-config
#   LIBXML2_CFLAGS
#               C compiler flags for LIBXML2, overriding pkg-config
#   LIBXML2_LIBS
#               linker flags for LIBXML2, overriding pkg-config
#   GCRYPT_CFLAGS
#               C compiler flags for gcrypt
#   GCRYPT_LIBS linker flags flags for gcrypt
#   GNUTLS_CFLAGS
#               C compiler flags for GNUTLS, overriding pkg-config
#   GNUTLS_LIBS linker flags for GNUTLS, overriding pkg-config
#   TAGLIB_CFLAGS
#               C compiler flags for TAGLIB, overriding pkg-config
#   TAGLIB_LIBS linker flags for TAGLIB, overriding pkg-config
#   SECRET_CFLAGS
#               C compiler flags for SECRET, overriding pkg-config
#   SECRET_LIBS linker flags for SECRET, overriding pkg-config
#   NOTIFY_CFLAGS
#               C compiler flags for NOTIFY, overriding pkg-config
#   NOTIFY_LIBS linker flags for NOTIFY, overriding pkg-config
#   LIBPLACEBO_CFLAGS
#               C compiler flags for LIBPLACEBO, overriding pkg-config
#   LIBPLACEBO_LIBS
#               linker flags for LIBPLACEBO, overriding pkg-config
#
# Use these variables to override the choices made by `configure' or to help
# it to find libraries and programs with nonstandard names/locations.
