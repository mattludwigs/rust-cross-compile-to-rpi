# Cross Compiling Rust for RPi Hackery

Most the Rust cross compiling articles are using Linux, but it would be able to cross
compile for raspberry pi (and others?) from a different host system. So using Docker and
the docker image provided in this repo as a proof of concept, I was able to cross compile
this Rust code base into the correct binary.

*Does not complete work yet, about 95% of the way there*


# How to Use

## Build Docker image

```
$ docker build -t cross_pi .
```

This might take a moment.


## Compile using the Docker container

```
$ docker run -it -v <path_to_this_dir>:/build cross_pi
```

## Check file type

Once completed run:

```
$ file target/armv7-unknown-linux-gnueabihf/debug/cross_pi
target/armv7-unknown-linux-gnueabihf/debug/cross_pi: ELF 32-bit LSB shared object, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 3.2.0, BuildID[sha1]=6881e5571eeb5fd891d0034584386628305c0ec3, with debug_info, not stripped
```

# Credit to those who Inspired/Helped me

1. https://github.com/japaric/rust-cross#how-do-i-compile-a-fully-statically-linked-rust-binaries
1. https://hackaday.com/2016/09/01/how-to-use-docker-to-cross-compile-for-raspberry-pi-and-more/
1. https://nerves-project.org/ (they use Docker to cross compile for different systems when not using Linux)
1. https://hackernoon.com/compiling-rust-for-the-raspberry-pi-49fdcd7df658
1. https://github.com/mitchallen/pi-cross-compile

