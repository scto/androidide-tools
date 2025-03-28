#!/data/data/com.itsaky.androidide/files/usr/bin/bash

mkdir -p android-sdk-aarch64
cd android-sdk-aarch64

wget https://github.com/lzhiyong/termux-ndk/releases/download/android-sdk/android-sdk-aarch64.zip

unzip -o android-sdk-aarch64.zip

# Copy 35.0.0 to build-tools

cp -rf /data/data/com.itsaky.androidide/files/home/android-sdk-aarch64/android-sdk/build-tools/35.0.0 /data/data/com.itsaky.androidide/files/home/android-sdk/build-tools/

# Copy android-35 to platforms

cp -rf /data/data/com.itsaky.androidide/files/home/android-sdk-aarch64/android-sdk/platforms/android-35 /data/data/com.itsaky.androidide/files/home/android-sdk/platforms/

# Copy the aapt2 file and organize the folders

mkdir -p /data/data/com.itsaky.androidide/files/home/.androidide/DefaultAapt2/

mv -f /data/data/com.itsaky.androidide/files/home/.androidide/aapt2 /data/data/com.itsaky.androidide/files/home/.androidide/DefaultAapt2/

mkdir -p /data/data/com.itsaky.androidide/files/home/.androidide/35.0.0/

cp -f /data/data/com.itsaky.androidide/files/home/android-sdk-aarch64/android-sdk/build-tools/35.0.0/aapt2 /data/data/com.itsaky.androidide/files/home/.androidide/35.0.0/

chmod +x /data/data/com.itsaky.androidide/files/home/.androidide/35.0.0/aapt2

cp -f /data/data/com.itsaky.androidide/files/home/.androidide/35.0.0/aapt2 /data/data/com.itsaky.androidide/files/home/.androidide/

# Update the licenses

cd /data/data/com.itsaky.androidide/files/home/android-sdk/cmdline-tools/latest/bin

./sdkmanager --install
./sdkmanager "platforms;android-30"
yes | ./sdkmanager --licenses

rm -rf android-sdk-aarch64.zip

echo -e "\e[32mSdk 35 installed successfully!\e[0m"
