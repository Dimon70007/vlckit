#!/bin/sh

BUILD_DEVICE=yes
BUILD_SIMULATOR=yes
SDK_VERSION=`xcrun --sdk iphoneos --show-sdk-version`
SDK_MIN=9.3
DEBUG=no
CONFIGURATION="Release"
BITCODE=no
ROOT_DIR=`pwd`

usage() # ./buildMobileVLCKit.sh -fbe && ./buildDynamicMobileVLCKit.sh -fb
{
cat << EOF
usage: $0 [-sd] [-fb]

OPTIONS
   -s       Build for simulator
   -f       Build framework for device and simulator
   -d       Enable Debug
   -b       Enable bitcode
EOF
}

while getopts "hsfbd" OPTION
do
     case $OPTION in
         h)
             usage
             exit 1
             ;;
         s)
             BUILD_DEVICE=no
             BUILD_SIMULATOR=yes
             ;;
         f)
             BUILD_DEVICE=yes
             BUILD_SIMULATOR=yes
             ;;
         d)  CONFIGURATION="Debug"
             ;;
         b)
             BITCODE=yes
             ;;
         ?)
             usage
             exit 1
             ;;
     esac
done


SCHEME="DynamicMobileVLCKit"
PROJECT="MobileVLCKit.xcodeproj"
TARGET="DynamicMobileVLCKit"

PROJECT_DIR=$ROOT_DIR
BUILD_DIR="`pwd`/build" #xcodebuild requires absolute path for BUILD_DIR
DERIVED_DATA_DIR=${BUILD_DIR}/DerivedData
frameworksDir="${BUILD_DIR}/Frameworks"

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ "${machine}" != "Mac" ];
then
	echo "${machine} not supported!"
	exit 1;
fi

rm -rf $DERIVED_DATA_DIR $frameworksDir

commonXcodeFlags="-project ${PROJECT} \
  -scheme "${SCHEME}" \
  -configuration "${CONFIGURATION}" \
  -IDEBuildOperationMaxNumberOfConcurrentCompileTasks=`sysctl -n hw.ncpu` \
  BUILD_DIR=${BUILD_DIR} \
  -derivedDataPath ${DERIVED_DATA_DIR}"
  
echo "▸▸ Building for iPhoneSimulator"
xcodebuild -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 8' \
  ARCHS='x86_64' \
  $commonXcodeFlags \
  clean build | xcpretty

bitcodeflag=""
EXTRAFLAGS=""
if [ "$BUILD_DEVICE" = "yes" ]; then
  if [ "$BITCODE" = "yes" ]; then
    bitcodeflag="BITCODE_GENERATION_MODE=bitcode"
    EXTRAFLAGS="-fembed-bitcode"
  fi
  
  export CFLAGS="${EXTRAFLAGS}"
  export CXXFLAGS="${EXTRAFLAGS}"
  export CPPFLAGS="${EXTRAFLAGS}"

  echo "▸▸ Building for iPhoneOS"
  xcodebuild -sdk iphoneos \
    $commonXcodeFlags \
    ONLY_ACTIVE_ARCH=NO \
    $bitcodeflag \
    clean build | xcpretty

    # -xcconfig commandline_build.xcconfig \

  cp -r "${BUILD_DIR}/${CONFIGURATION}-iphoneos" "${BUILD_DIR}/Frameworks"

  makeUniversal() {
    targetName=$1
    frameworkPath="$1.framework"
    if [ $targetName != $TARGET ]; then
      frameworkPath="$1/$1.framework"
    fi
    echo "▸▸ Make universal $targetName Framework"

    lipo -create "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${frameworkPath}/${targetName}" "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/${frameworkPath}/${targetName}" -output "${BUILD_DIR}/Frameworks/${frameworkPath}/${targetName}"
    lipo -info "${BUILD_DIR}/Frameworks/libStaticLibVLC.a"
  }

  makeUniversal $TARGET
else
  cp -r "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator" "${BUILD_DIR}/Frameworks"
fi

echo "▸▸ Deleting arch specific Frameworks"
rm -rf "${BUILD_DIR}/${CONFIGURATION}-iphoneos"
rm -rf "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator"
rm -rf "${BUILD_DIR}/${TARGET}.build"
rm -rf $DERIVED_DATA_DIR

echo "▸▸ Result:"

lipo -info "${frameworksDir}/${TARGET}.framework/${TARGET}"

mv "${frameworksDir}/${TARGET}.framework" $PROJECT_DIR/

