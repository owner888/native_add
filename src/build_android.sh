export ANDROID_OUT=../android/src/main/jniLibs
export ANDROID_SDK=$HOME/Library/Android/sdk
export NDK_BIN=$ANDROID_SDK/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin

# Compile for x86_64 architecture and place the binary file in the android/src/main/jniLibs/x86_64 folder
CGO_ENABLED=1 \
GOOS=android \
GOARCH=amd64 \
CC=$NDK_BIN/x86_64-linux-android21-clang \
go build -buildmode=c-shared -o $ANDROID_OUT/x86_64/libmysum.so .

# Compile for arm64 architecture and place the binary file in the android/src/main/jniLibs/arm64-v8a folder
CGO_ENABLED=1 \
GOOS=android \
GOARCH=arm64 \
CC=$NDK_BIN/aarch64-linux-android21-clang \
go build -buildmode=c-shared -o $ANDROID_OUT/arm64-v8a/libmysum.so .
