git clone --recursive http://gerrit.named-data.net/NFD-android
echo sdk.dir=`pwd`/android-sdk-linux > NFD-android/local.properties
echo ndk.dir=`pwd`/crystax-ndk-10.3.1 >> NFD-android/local.properties
cd NFD-android

./gradlew assembleRelease
