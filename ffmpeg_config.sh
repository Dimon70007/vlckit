#! /usr/bin/env bash

export COMMON_FF_CFG_FLAGS=

# Licensing options:
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-gpl" # allow use of GPL code, the resulting libs  and binaries will be under GPL [no]
# # COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-version3" # upgrade (L)GPL to version 3 [no]
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-nonfree" #if enabled - allow use of nonfree code, the resulting libs and binaries will be unredistributable [no]


# Configuration options:
#   --disable-static         do not build static libraries [no]
#   --enable-shared          build shared libraries [no]
#   --enable-small           optimize for size instead of speed
#   --disable-runtime-cpudetect disable detecting CPU capabilities at runtime (smaller binary)
#   --enable-gray            enable full grayscale support (slower color)
#   --disable-swscale-alpha  disable alpha channel support in swscale
#   --disable-all            disable building components, libraries and programs
#   --disable-autodetect     disable automatically detected external libraries [no]
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-runtime-cpudetect"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-gray"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-swscale-alpha"

# Program options:
#   --disable-programs       do not build command line programs
#   --disable-ffmpeg         disable ffmpeg build
#   --disable-ffplay         disable ffplay build
#   --disable-ffprobe        disable ffprobe build
#   --disable-ffserver       disable ffserver build
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-programs"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffmpeg"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffplay"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffprobe"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffserver"

# Documentation options:
#   --disable-doc            do not build documentation
#   --disable-htmlpages      do not build HTML documentation pages
#   --disable-manpages       do not build man documentation pages
#   --disable-podpages       do not build POD documentation pages
#   --disable-txtpages       do not build text documentation pages
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-doc"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-htmlpages"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-manpages"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-podpages"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-txtpages"

# Component options:
#   --disable-avdevice       disable libavdevice build
#   --disable-avcodec        disable libavcodec build
#   --disable-avformat       disable libavformat build
#   --disable-swresample     disable libswresample build
#   --disable-swscale        disable libswscale build
#   --disable-postproc       disable libpostproc build
#   --disable-avfilter       disable libavfilter build
#   --enable-avresample      enable libavresample build [no]
#   --disable-pthreads       disable pthreads [autodetect]
#   --disable-w32threads     disable Win32 threads [autodetect]
#   --disable-os2threads     disable OS/2 threads [autodetect]
#   --disable-network        disable network support [no]
#   --disable-dct            disable DCT code
#   --disable-dwt            disable DWT code
#   --disable-error-resilience disable error resilience code
#   --disable-lsp            disable LSP code
#   --disable-lzo            disable LZO decoder code
#   --disable-mdct           disable MDCT code
#   --disable-rdft           disable RDFT code
#   --disable-fft            disable FFT code
#   --disable-faan           disable floating point AAN (I)DCT code
#   --disable-pixelutils     disable pixel utils in libavutil
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-avdevice"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-avcodec"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-avformat"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-avutil"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-swresample"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-swscale"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-postproc"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-avfilter"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-avresample"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-pthreads"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-w32threads"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-os2threads"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-network"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-dct"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-dwt"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-lsp"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-lzo"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-mdct"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-rdft"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-fft"

# hardware acceleration features:
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-amf" # disable AMF video encoding code [autodetect]
#   --disable-audiotoolbox   disable Apple AudioToolbox code [autodetect]
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-cuda" # disable dynamically linked Nvidia CUDA code [autodetect]
#   --enable-cuda-sdk        enable CUDA features that require the CUDA SDK [no]
#   --disable-cuvid          disable Nvidia CUVID support [autodetect]
#   --disable-d3d11va        disable Microsoft Direct3D 11 video acceleration code [autodetect]
#   --disable-dxva2          disable Microsoft DirectX 9 video acceleration code [autodetect]
#   --enable-libdrm          enable DRM code (Linux) [no]
#   --enable-libmfx          enable Intel MediaSDK (AKA Quick Sync Video) code via libmfx [no]
#   --enable-libnpp          enable Nvidia Performance Primitives-based code [no]
#   --enable-mmal            enable Broadcom Multi-Media Abstraction Layer (Raspberry Pi) via MMAL [no]
#   --disable-nvdec          disable Nvidia video decoding acceleration (via hwaccel) [autodetect]
#   --disable-nvenc          disable Nvidia video encoding code [autodetect]
#   --enable-omx             enable OpenMAX IL code [no]
#   --enable-omx-rpi         enable OpenMAX IL code for Raspberry Pi [no]
#   --enable-rkmpp           enable Rockchip Media Process Platform code [no]
#   --disable-v4l2-m2m       disable V4L2 mem2mem code [autodetect]
#   --disable-vaapi          disable Video Acceleration API (mainly Unix/Intel) code [autodetect]
#   --disable-vdpau          disable Nvidia Video Decode and Presentation API for Unix code [autodetect]
#   --disable-videotoolbox   disable VideoToolbox code [autodetect]

COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-dxva2"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-vaapi"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-vda"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-vdpau"

# Individual component options:
#   --disable-everything     disable all components listed below
#   --disable-encoder=NAME   disable encoder NAME
#   --enable-encoder=NAME    enable encoder NAME
#   --disable-encoders       disable all encoders
#   --disable-decoder=NAME   disable decoder NAME
#   --enable-decoder=NAME    enable decoder NAME
#   --disable-decoders       disable all decoders
#   --disable-hwaccel=NAME   disable hwaccel NAME
#   --enable-hwaccel=NAME    enable hwaccel NAME
#   --disable-hwaccels       disable all hwaccels
#   --disable-muxer=NAME     disable muxer NAME
#   --enable-muxer=NAME      enable muxer NAME
#   --disable-muxers         disable all muxers
#   --disable-demuxer=NAME   disable demuxer NAME
#   --enable-demuxer=NAME    enable demuxer NAME
#   --disable-demuxers       disable all demuxers
#   --enable-parser=NAME     enable parser NAME
#   --disable-parser=NAME    disable parser NAME
#   --disable-parsers        disable all parsers
#   --enable-bsf=NAME        enable bitstream filter NAME
#   --disable-bsf=NAME       disable bitstream filter NAME
#   --disable-bsfs           disable all bitstream filters
#   --enable-protocol=NAME   enable protocol NAME
#   --disable-protocol=NAME  disable protocol NAME
#   --disable-protocols      disable all protocols
#   --enable-indev=NAME      enable input device NAME
#   --disable-indev=NAME     disable input device NAME
#   --disable-indevs         disable input devices
#   --enable-outdev=NAME     enable output device NAME
#   --disable-outdev=NAME    disable output device NAME
#   --disable-outdevs        disable output devices
#   --disable-devices        disable all devices
#   --enable-filter=NAME     enable filter NAME
#   --disable-filter=NAME    disable filter NAME
#   --disable-filters        disable all filters
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-encoders"

# ./configure --list-decoders
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-decoders"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=ac3" # need for aac parser
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=flac"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=aac"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=aac_latm"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=h263"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=h263i"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=h263p"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=h264"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=mp3*"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=hevc"

# ./configure --list-muxers
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-muxers"

# ./configure --list-demuxers
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-demuxers"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=flac"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=ac3"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=aac"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=concat"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=data"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=hls"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=mp3"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=mpegps"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=mpegts"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=mpegtsraw"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=mpegvideo"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=hevc"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=dash"

# ./configure --list-parsers
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-parsers"
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=flac"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=ac3"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=aac"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=aac_latm"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=h263"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=h264"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-parser=hevc"

# ./configure --list-bsf
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-bsfs"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-bsf=vp9_superframe" # bsf=vp9_superframe is needed to mux VP9 inside webm/mkv

# ./configure --list-protocols
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-protocols"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-protocol=async"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=bluray"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=ffrtmpcrypt"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-protocol=ffrtmphttp"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=gopher"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=librtmp*"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=libssh"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=mmsh"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=mmst"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=rtmp*"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-protocol=rtmp"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-protocol=rtmpt"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=rtp"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=sctp"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=srtp"
COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-protocol=unix"

# External library support:
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-iconv"

#   Using any of the following switches will allow FFmpeg to link to the
#   corresponding external library. All the components depending on that library
#   will become enabled, if all their other dependencies are met and they are not
#   explicitly disabled. E.g. --enable-libwavpack will enable linking to
#   libwavpack and allow the libwavpack encoder to be built, unless it is
#   specifically disabled with --disable-encoder=libwavpack.
#
#   Note that only the system libraries are auto-detected. All the other external
#   libraries must be explicitly enabled.
#
#   Also note that the following help text describes the purpose of the libraries
#   themselves, not all their features will necessarily be usable by FFmpeg.
#
#   --disable-alsa           disable ALSA support [autodetect]
#   --disable-appkit         disable Apple AppKit framework [autodetect]
#   --disable-avfoundation   disable Apple AVFoundation framework [autodetect]
#   --enable-avisynth        enable reading of AviSynth script files [no]
#   --disable-bzlib          disable bzlib [autodetect]
#   --disable-coreimage      disable Apple CoreImage framework [autodetect]
#   --enable-chromaprint     enable audio fingerprinting with chromaprint [no]
#   --enable-frei0r          enable frei0r video filtering [no]
#   --enable-gcrypt          enable gcrypt, needed for rtmp(t)e support
#                            if openssl, librtmp or gmp is not used [no]
#   --enable-gmp             enable gmp, needed for rtmp(t)e support
#                            if openssl or librtmp is not used [no]
#   --enable-gnutls          enable gnutls, needed for https support
#                            if openssl is not used [no]
#   --disable-iconv          disable iconv [autodetect]
#   --enable-jni             enable JNI support [no]
#   --enable-ladspa          enable LADSPA audio filtering [no]
#   --enable-libass          enable libass subtitles rendering,
#                            needed for subtitles and ass filter [no]
#   --enable-libbluray       enable BluRay reading using libbluray [no]
#   --enable-libbs2b         enable bs2b DSP library [no]
#   --enable-libcaca         enable textual display using libcaca [no]
#   --enable-libcelt         enable CELT decoding via libcelt [no]
#   --enable-libcdio         enable audio CD grabbing with libcdio [no]
#   --enable-libdc1394       enable IIDC-1394 grabbing using libdc1394
#                            and libraw1394 [no]
#   --enable-libfdk-aac      enable AAC de/encoding via libfdk-aac [no]
#   --enable-libflite        enable flite (voice synthesis) support via libflite [no]
#   --enable-libfontconfig   enable libfontconfig, useful for drawtext filter [no]
#   --enable-libfreetype     enable libfreetype, needed for drawtext filter [no]
#   --enable-libfribidi      enable libfribidi, improves drawtext filter [no]
#   --enable-libgme          enable Game Music Emu via libgme [no]
#   --enable-libgsm          enable GSM de/encoding via libgsm [no]
#   --enable-libiec61883     enable iec61883 via libiec61883 [no]
#   --enable-libilbc         enable iLBC de/encoding via libilbc [no]
#   --enable-libjack         enable JACK audio sound server [no]
#   --enable-libkvazaar      enable HEVC encoding via libkvazaar [no]
#   --enable-libmodplug      enable ModPlug via libmodplug [no]
#   --enable-libmp3lame      enable MP3 encoding via libmp3lame [no]
#   --enable-libopencore-amrnb enable AMR-NB de/encoding via libopencore-amrnb [no]
#   --enable-libopencore-amrwb enable AMR-WB decoding via libopencore-amrwb [no]
#   --enable-libopencv       enable video filtering via libopencv [no]
#   --enable-libopenh264     enable H.264 encoding via OpenH264 [no]
#   --enable-libopenjpeg     enable JPEG 2000 de/encoding via OpenJPEG [no]
#   --enable-libopenmpt      enable decoding tracked files via libopenmpt [no]
#   --enable-libopus         enable Opus de/encoding via libopus [no]
#   --enable-libpulse        enable Pulseaudio input via libpulse [no]
#   --enable-librsvg         enable SVG rasterization via librsvg [no]
#   --enable-librubberband   enable rubberband needed for rubberband filter [no]
#   --enable-librtmp         enable RTMP[E] support via librtmp [no]
#   --enable-libshine        enable fixed-point MP3 encoding via libshine [no]
#   --enable-libsmbclient    enable Samba protocol via libsmbclient [no]
#   --enable-libsnappy       enable Snappy compression, needed for hap encoding [no]
#   --enable-libsoxr         enable Include libsoxr resampling [no]
#   --enable-libspeex        enable Speex de/encoding via libspeex [no]
#   --enable-libssh          enable SFTP protocol via libssh [no]
#   --enable-libtesseract    enable Tesseract, needed for ocr filter [no]
#   --enable-libtheora       enable Theora encoding via libtheora [no]
#   --enable-libtwolame      enable MP2 encoding via libtwolame [no]
#   --enable-libv4l2         enable libv4l2/v4l-utils [no]
#   --enable-libvidstab      enable video stabilization using vid.stab [no]
#   --enable-libvmaf         enable vmaf filter via libvmaf [no]
#   --enable-libvo-amrwbenc  enable AMR-WB encoding via libvo-amrwbenc [no]
#   --enable-libvorbis       enable Vorbis en/decoding via libvorbis,
#                            native implementation exists [no]
#   --enable-libvpx          enable VP8 and VP9 de/encoding via libvpx [no]
#   --enable-libwavpack      enable wavpack encoding via libwavpack [no]
#   --enable-libwebp         enable WebP encoding via libwebp [no]
#   --enable-libx264         enable H.264 encoding via x264 [no]
#   --enable-libx265         enable HEVC encoding via x265 [no]
#   --enable-libxavs         enable AVS encoding via xavs [no]
#   --enable-libxcb          enable X11 grabbing using XCB [autodetect]
#   --enable-libxcb-shm      enable X11 grabbing shm communication [autodetect]
#   --enable-libxcb-xfixes   enable X11 grabbing mouse rendering [autodetect]
#   --enable-libxcb-shape    enable X11 grabbing shape rendering [autodetect]
#   --enable-libxvid         enable Xvid encoding via xvidcore,
#                            native MPEG-4/Xvid encoder exists [no]
#   --enable-libxml2         enable XML parsing using the C library libxml2 [no]
#   --enable-libzimg         enable z.lib, needed for zscale filter [no]
#   --enable-libzmq          enable message passing via libzmq [no]
#   --enable-libzvbi         enable teletext support via libzvbi [no]
#   --enable-lv2             enable LV2 audio filtering [no]
#   --disable-lzma           disable lzma [autodetect]
#   --enable-decklink        enable Blackmagic DeckLink I/O support [no]
#   --enable-libndi_newtek   enable Newteck NDI I/O support [no]
#   --enable-mediacodec      enable Android MediaCodec support [no]
#   --enable-libmysofa       enable libmysofa, needed for sofalizer filter [no]
#   --enable-openal          enable OpenAL 1.1 capture support [no]
#   --enable-opencl          enable OpenCL processing [no]
#   --enable-opengl          enable OpenGL rendering [no]
#   --enable-openssl         enable openssl, needed for https support
#                            if gnutls is not used [no]
#   --disable-sndio          disable sndio support [autodetect]
#   --disable-schannel       disable SChannel SSP, needed for TLS support on
#                            Windows if openssl and gnutls are not used [autodetect]
#   --disable-sdl2           disable sdl2 [autodetect]
#   --disable-securetransport disable Secure Transport, needed for TLS support
#                            on OSX if openssl and gnutls are not used [autodetect]
#   --disable-xlib           disable xlib [autodetect]
#   --disable-zlib           disable zlib [autodetect]
#

#
# Toolchain options:
#   --arch=ARCH              select architecture [$arch]
#   --cpu=CPU                select the minimum required CPU (affects
#                            instruction selection, may crash on older CPUs)
#   --cross-prefix=PREFIX    use PREFIX for compilation tools [$cross_prefix]
#   --progs-suffix=SUFFIX    program name suffix []
#   --enable-cross-compile   assume a cross-compiler is used
#   --sysroot=PATH           root of cross-build tree
#   --sysinclude=PATH        location of cross-build system headers
#   --target-os=OS           compiler targets OS [$target_os]
#   --target-exec=CMD        command to run executables on target
#   --target-path=DIR        path to view of build directory on target
#   --target-samples=DIR     path to samples directory on target
#   --tempprefix=PATH        force fixed dir/prefix instead of mktemp for checks
#   --toolchain=NAME         set tool defaults according to NAME
#   --nm=NM                  use nm tool NM [$nm_default]
#   --ar=AR                  use archive tool AR [$ar_default]
#   --as=AS                  use assembler AS [$as_default]
#   --ln_s=LN_S              use symbolic link tool LN_S [$ln_s_default]
#   --strip=STRIP            use strip tool STRIP [$strip_default]
#   --windres=WINDRES        use windows resource compiler WINDRES [$windres_default]
#   --x86asmexe=EXE          use nasm-compatible assembler EXE [$x86asmexe_default]
#   --cc=CC                  use C compiler CC [$cc_default]
#   --cxx=CXX                use C compiler CXX [$cxx_default]
#   --objcc=OCC              use ObjC compiler OCC [$cc_default]
#   --dep-cc=DEPCC           use dependency generator DEPCC [$cc_default]
#   --nvcc=NVCC              use Nvidia CUDA compiler NVCC [$nvcc_default]
#   --ld=LD                  use linker LD [$ld_default]
#   --pkg-config=PKGCONFIG   use pkg-config tool PKGCONFIG [$pkg_config_default]
#   --pkg-config-flags=FLAGS pass additional flags to pkgconf []
#   --ranlib=RANLIB          use ranlib RANLIB [$ranlib_default]
#   --doxygen=DOXYGEN        use DOXYGEN to generate API doc [$doxygen_default]
#   --host-cc=HOSTCC         use host C compiler HOSTCC
#   --host-cflags=HCFLAGS    use HCFLAGS when compiling for host
#   --host-cppflags=HCPPFLAGS use HCPPFLAGS when compiling for host
#   --host-ld=HOSTLD         use host linker HOSTLD
#   --host-ldflags=HLDFLAGS  use HLDFLAGS when linking for host
#   --host-libs=HLIBS        use libs HLIBS when linking for host
#   --host-os=OS             compiler host OS [$target_os]
#   --extra-cflags=ECFLAGS   add ECFLAGS to CFLAGS [$CFLAGS]
#   --extra-cxxflags=ECFLAGS add ECFLAGS to CXXFLAGS [$CXXFLAGS]
#   --extra-objcflags=FLAGS  add FLAGS to OBJCFLAGS [$CFLAGS]
#   --extra-ldflags=ELDFLAGS add ELDFLAGS to LDFLAGS [$LDFLAGS]
#   --extra-ldexeflags=ELDFLAGS add ELDFLAGS to LDEXEFLAGS [$LDEXEFLAGS]
#   --extra-ldsoflags=ELDFLAGS add ELDFLAGS to LDSOFLAGS [$LDSOFLAGS]
#   --extra-libs=ELIBS       add ELIBS [$ELIBS]
#   --extra-version=STRING   version string suffix []
#   --optflags=OPTFLAGS      override optimization-related compiler flags
#   --nvccflags=NVCCFLAGS    override nvcc flags [$nvccflags_default]
#   --build-suffix=SUFFIX    library name suffix []
#   --enable-pic             build position-independent code
#   --enable-thumb           compile for Thumb instruction set
#   --enable-lto             use link-time optimization
#   --env="ENV=override"     override the environment variables
#
# Advanced options (experts only):
#   --malloc-prefix=PREFIX   prefix malloc and related names with PREFIX
#   --custom-allocator=NAME  use a supported custom allocator
#   --disable-symver         disable symbol versioning
#   --enable-hardcoded-tables use hardcoded tables instead of runtime generation
#   --disable-safe-bitstream-reader
#                            disable buffer boundary checking in bitreaders
#                            (faster, but may crash)
#   --sws-max-filter-size=N  the max filter size swscale uses [$sws_max_filter_size_default]
#
# Optimization options (experts only):
#   --disable-asm            disable all assembly optimizations
#   --disable-altivec        disable AltiVec optimizations
#   --disable-vsx            disable VSX optimizations
#   --disable-power8         disable POWER8 optimizations
#   --disable-amd3dnow       disable 3DNow! optimizations
#   --disable-amd3dnowext    disable 3DNow! extended optimizations
#   --disable-mmx            disable MMX optimizations
#   --disable-mmxext         disable MMXEXT optimizations
#   --disable-sse            disable SSE optimizations
#   --disable-sse2           disable SSE2 optimizations
#   --disable-sse3           disable SSE3 optimizations
#   --disable-ssse3          disable SSSE3 optimizations
#   --disable-sse4           disable SSE4 optimizations
#   --disable-sse42          disable SSE4.2 optimizations
#   --disable-avx            disable AVX optimizations
#   --disable-xop            disable XOP optimizations
#   --disable-fma3           disable FMA3 optimizations
#   --disable-fma4           disable FMA4 optimizations
#   --disable-avx2           disable AVX2 optimizations
#   --disable-aesni          disable AESNI optimizations
#   --disable-armv5te        disable armv5te optimizations
#   --disable-armv6          disable armv6 optimizations
#   --disable-armv6t2        disable armv6t2 optimizations
#   --disable-vfp            disable VFP optimizations
#   --disable-neon           disable NEON optimizations
#   --disable-inline-asm     disable use of inline assembly
#   --disable-x86asm         disable use of standalone x86 assembly
#   --disable-mipsdsp        disable MIPS DSP ASE R1 optimizations
#   --disable-mipsdspr2      disable MIPS DSP ASE R2 optimizations
#   --disable-msa            disable MSA optimizations
#   --disable-mipsfpu        disable floating point MIPS optimizations
#   --disable-mmi            disable Loongson SIMD optimizations
#   --disable-fast-unaligned consider unaligned accesses slow
# COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-x86asm"
