FROM ubuntu:xenial

RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \	
	git \
	curl \
	make \
	gcc \
	g++ \
	gcc-mingw-w64 \
	g++-mingw-w64 \
	gcc-arm-linux-gnueabihf \ 
	g++-arm-linux-gnueabihf \
	gcc-aarch64-linux-gnu \
	g++-aarch64-linux-gnu \
	gcc-mips64el-linux-gnuabi64 \
	g++-mips64el-linux-gnuabi64 \
    && apt-get clean \
    && curl https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz | tar xvz -C /usr/local 

ENV GOPATH /go

ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

WORKDIR /workdir
