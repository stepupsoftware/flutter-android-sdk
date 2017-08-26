# Docker image with Android SDK and Flutter

[![](https://images.microbadger.com/badges/version/martinlowinski/flutter-android-sdk.svg)](https://microbadger.com/images/martinlowinski/flutter-android-sdk "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/martinlowinski/flutter-android-sdk.svg)](https://microbadger.com/images/martinlowinski/flutter-android-sdk "Get your own image badge on microbadger.com")

## Bitbucket Pipelines

This image can be used to test and build Android APKs developed with Flutter. Here is an example `bitbucket-pipelines.yml` for Bitbucket Pipelines including caches for gradle and gradlewrapper:

```
image: martinlowinski/flutter-android-sdk

pipelines:
  default:
    - step:
        caches:
          - gradle
          - gradlewrapper
        script:
          - echo "Building APK..."
          - flutter doctor
          - flutter -v build apk

definitions:
  caches:
    gradlewrapper: ~/.gradle/wrapper
```
