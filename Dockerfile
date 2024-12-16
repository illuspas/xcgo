FROM ubuntu:xenial

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
	clang \
	llvm \
	nasm \
	ccache \
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
	&& apt-get clean \
	&& curl https://dl.google.com/go/go1.23.4.linux-amd64.tar.gz | tar xvz -C /usr/local \
	&& curl https://cdn.nodemedia.cn/tar/osxcross-11.0.tar.gz | tar xvz -C / \
	&& curl https://cdn.nodemedia.cn/tar/freebsd-9.tar.gz | tar xvz -C / 

ENV GOPATH /go

ENV LD_LIBRARY_PATH /freebsd/lib

ENV PATH $GOPATH/bin:/usr/local/go/bin:/usr/osxcross/target/bin:/freebsd/bin:/opt/cross-tools/bin:$PATH

WORKDIR /workdir
