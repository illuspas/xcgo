FROM ubuntu:xenial

RUN apt-get update && apt-get install -y  \
	ca-certificates \
	unzip \
	git \
	curl \
	make \
	cmake \
	gcc \
	g++ \
	clang \
	llvm \
	yasm \
	nasm \
	pkg-config \
	gcc-mingw-w64 \
	g++-mingw-w64 \
	libz-mingw-w64-dev \
	pkg-config-mingw-w64-i686 \
	pkg-config-mingw-w64-x86-64 \
	gcc-arm-linux-gnueabihf \ 
	g++-arm-linux-gnueabihf \
	pkg-config-arm-linux-gnueabihf \
	gcc-aarch64-linux-gnu \
	g++-aarch64-linux-gnu \
	pkg-config-aarch64-linux-gnu \
	gcc-mips64el-linux-gnuabi64 \
	g++-mips64el-linux-gnuabi64 \
	pkg-config-mips64el-linux-gnuabi64 \
    && apt-get clean \
    && curl https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz | tar xvz -C /usr/local \
    && curl https://media.githubusercontent.com/media/illuspas/resources/master/tar/osxcross-10.10.tar.gz | tar xvz -C /

ENV GOPATH /go

ENV PATH $GOPATH/bin:/usr/local/go/bin:/usr/osxcross/target/bin:$PATH

WORKDIR /workdir
