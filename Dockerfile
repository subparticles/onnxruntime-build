FROM subparticles/onnxruntime-ci:1.7.2

USER user

RUN mkdir -p /home/user/code
RUN cd /home/user/code && git clone --recursive -b v1.7.2 --depth 1 https://github.com/microsoft/onnxruntime

RUN cd /home/user/code/onnxruntime && ./build.sh --android --android_sdk_path /opt/Android/Sdk/ --android_ndk_path /opt/Android/Sdk/ndk/22.1.7171670/ --android_abi arm64-v8a --android_api 26 --build_java
