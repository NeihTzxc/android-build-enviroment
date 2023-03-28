<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Android Environment Docker Image</title>
</head>
<body>
    <h1>Android Environment Docker Image</h1>
    <p>This Docker image provides an environment for building Android apps. It includes OpenJDK 11, the Android SDK command line tools, and other necessary dependencies.</p>
    <h2>Usage</h2>
    <p>To use this image, you can either pull it from Docker Hub or build it yourself using the included Dockerfile.</p>
    <h3>Pull from Docker Hub</h3>
    <pre><code>docker pull thiennguyen98/android-native-build-environment:latest</code></pre>
    <h3>Build the image yourself</h3>
    <p>Clone the GitHub repository and navigate to the project directory. Then run the following command:</p>
    <pre><code>docker build -t thiennguyen98/android-native-build-environment:latest .</code></pre>
    <h2>Environment Variables</h2>
    <p>The following environment variables are available for customization:</p>
    <ul>
        <li><code>ANDROID_COMPILE_SDK</code>: the version of the Android SDK to compile against (default: 33)</li>
        <li><code>ANDROID_SDK_TOOLS</code>: the version of the Android SDK command line tools to use (default: 8092744)</li>
        <li><code>ANDROID_BUILD_TOOLS</code>: the version of the Android build tools to use (default: 33.0.0)</li>
        <li><code>GRADLE_USER_HOME</code>: the location of the Gradle user home directory (default: ".gradle")</li>
    </ul>
    <h2>License</h2>
    <p>This project is licensed under the MIT License. See the <code>LICENSE</code> file for details.</p>
</body>
</html>
