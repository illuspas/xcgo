FROM ubuntu:18.04

RUN apt-get update && apt-get install -y  \
	ca-certificates \
	unzip \
	xz-utils \
	git \
	curl \
	make \
	cmake \
	gcc \
	g++ \
	nasm \
	pkg-config \
	gcc-mingw-w64 \
	g++-mingw-w64 \
	pkg-config-mingw-w64-i686 \
	pkg-config-mingw-w64-x86-64 \
	gcc-aarch64-linux-gnu \
	g++-aarch64-linux-gnu \
	pkg-config-aarch64-linux-gnu \
	gcc-mips64el-linux-gnuabi64 \
	g++-mips64el-linux-gnuabi64 \
	pkg-config-mips64el-linux-gnuabi64 \
  	gcc-riscv64-linux-gnu \
 	g++-riscv64-linux-gnu \
  	pkg-config-riscv64-linux-gnu \
	&& apt-get clean \
	&& curl https://dl.google.com/go/go1.23.4.linux-amd64.tar.gz | tar xvz -C /usr/local

ENV GOPATH /go

ENV PATH $GOPATH/bin:/usr/local/go/bin:/usr/osxcross/target/bin:$PATH

WORKDIR /workdir
