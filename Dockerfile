FROM openjdk:11-jdk
ENV ANDROID_COMPILE_SDK=33
ENV ANDROID_SDK_TOOLS=8092744
ENV GRADLE_USER_HOME=".gradle"
ENV ANDROID_BUILD_TOOLS="33.0.0"
RUN apt-get --quiet update --yes
RUN apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1 rsync openssh-server curl bash
RUN wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-${ANDROID_SDK_TOOLS}_latest.zip
RUN export ANDROID_HOME=$PWD/android-sdk-linux
RUN unzip -q -d ${ANDROID_HOME} android-sdk.zip
RUN echo y | android-sdk-linux/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platforms;android-${ANDROID_COMPILE_SDK}" >/dev/null
RUN export PATH=$PATH:$ANDROID_HOME/platform-tools/

