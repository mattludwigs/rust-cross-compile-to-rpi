FROM ubuntu:bionic

COPY cargo_config.sh /home

RUN apt-get update -y -qq \
  && apt-get install -y \
    curl \
    build-essential \
    gcc-arm-linux-gnueabihf

RUN touch rustup.sh
RUN curl https://sh.rustup.rs -sSf > rustup.sh
RUN sh ./rustup.sh -y

RUN ln -s ${HOME}/.cargo/bin/cargo /home/cargo
RUN ln -s ${HOME}/.cargo/bin/rustup /home/rustup

RUN /home/rustup target add arm-unknown-linux-gnueabihf

RUN sh /home/cargo_config.sh

ENV BUILD_FOLDER /build
WORKDIR ${BUILD_FOLDER}

CMD ["/home/cargo", "build", "--target=arm-unknown-linux-gnueabihf"]

