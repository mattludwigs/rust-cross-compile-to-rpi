cat >>~/.cargo/config <<EOF
[target.arm-unknown-linux-gnueabihf]
linker = "arm-linux-gnueabihf-gcc"
EOF
