# drivesink-arm32v7

[![Build Status](https://travis-ci.org/ddgenome/drivesink-arm32v7.svg?branch=master)](https://travis-ci.org/ddgenome/drivesink-arm32v7)

Docker image for [drivesink][] Python script for arm32v7/armhf.  The
The image is based on [resin/rpi-raspbian:jessie][raspbian].

[raspbian]: https://hub.docker.com/r/resin/rpi-raspbian/ (Resin Raspberry Pi Debian)
[drivesink]: https://drivesink.appspot.com/

## Setup

You first need to authorize the [drivesink][] app to access your
Amazon Cloud Drive.

https://drivesink.appspot.com/usage

Filtering: https://developer.amazon.com/public/apis/experience/cloud-drive/content/nodes#Filtering
https://drivesink.appspot.com/nodes?filters=kind:FILE

## Using

You can run this image directly:

```console
$ docker run -it --rm ddgenome/drivesink-arm32v7:VERSION
```

or build a new image from it by using it as the `FROM` image in your
Dockerfile

```dockerfile
FROM ddgenome/drivesink-arm32v7:VERSION
```

replacing `VERSION` with the version you want to run.

## Building

This image is build on [Travis CI][travis].  To build this ARM Docker
image on x86 infrastructure, [QEMU][qemu] is used.  See [Setup a
simple CI pipeline to build Docker images for ARM][ci] for more details.

[travis]: https://travis-ci.org/ (Travis CI)
[qemu]: https://www.qemu.org/ (QEMU)
[ci]: https://blog.hypriot.com/post/setup-simple-ci-pipeline-for-arm-images/
