CRYSTAX_NDK_VERSION=10.3.1
SDK_VERSION=24.4.1
OPENSSL_VERSION=1.0.2h

BUILD_TOOLS_VERSION=23.0.2
COMPILE_SDK_VERSION=23

sudo apt -q update
sudo apt -qy upgrade
sudo apt-get install -y build-essential git openjdk-8-jdk unzip
sudo apt-get install -y lib32stdc++6 lib32z1 lib32z1-dev

wget https://www.crystax.net/download/crystax-ndk-$CRYSTAX_NDK_VERSION-linux-x86_64.tar.xz
tar xf crystax-ndk-$CRYSTAX_NDK_VERSION-linux-x86_64.tar.xz
rm crystax-ndk-$CRYSTAX_NDK_VERSION-linux-x86_64.tar.xz

wget http://dl.google.com/android/android-sdk_r$SDK_VERSION-linux.tgz
tar zxf android-sdk_r$SDK_VERSION-linux.tgz
rm android-sdk_r$SDK_VERSION-linux.tgz

export ANDROID_HOME=`pwd`/android-sdk-linux
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

echo "y" | android update sdk --filter platform-tools,build-tools-$BUILD_TOOLS_VERSION,android-$COMPILE_SDK_VERSION,extra-android-m2repository,extra-google-m2repository --no-ui --all --force
echo "y" | android update sdk --filter "android-19" --no-ui --all --force
