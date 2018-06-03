# Cross Compiling Rust for RPi Hackery

Most the Rust cross compiling articles are using Linux, but it would be able to cross
compile for raspberry pi (and others?) from a different host system. So using Docker and
the docker image provided in this repo as a proof of concept, I was able to cross compile
this Rust code base into the correct binary.


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



