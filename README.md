# Docker image with Android SDK and Flutter

## Building and running

```
docker build -t [image-name] .
docker run -it --entrypoint=/bin/bash [image-name]
```

## Bitbucket Pipelines

This image can be used to test and build Android APKs developed with Flutter. Here is an example `bitbucket-pipelines.yml` for Bitbucket Pipelines including caches for gradle and gradlewrapper:

```
image: valotas/lokali-build:version-1

pipelines:
  default:
    - step:
        caches:
          - gradle
          - gradlewrapper
          - flutter
        script:
          - echo "Building APK..."
          - flutter upgrade
          - flutter doctor
          - flutter -v build apk

definitions:
  caches:
    gradlewrapper: ~/.gradle/wrapper
    flutter: /opt/flutter
```
