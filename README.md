# xcgo
CGO Cross Compiler, Used for compiling [NMSv3](https://github.com/NodeMedia/NodeMediaServer)

## Support Target
* Linux amd64 | arm | arm64 | mips64el
* Windows amd64 | 386
* Darwin amd64 
* FreeBSD amd64

## Usage 
linux amd64
```
cd project_dir
docker run --rm -v $(pwd):/workdir illuspas/xcgo go build -v
```

linux amd64 with proxy 
```
cd project_dir
docker run --rm -v $(pwd):/workdir -e HTTPS_PROXY=http://192.168.0.11:8118 illuspas/xcgo go build -v
```

linux amd64 with local GOPATH 
```
cd project_dir
docker run --rm -v $(pwd):/workdir -v /home/username/go:/go illuspas/xcgo go build -v
```

windows amd64
```
cd project_dir
docker run --rm -v $(pwd):/workdir -e CGO_ENABLED=1 -e GOOS=windows -e GOARCH=amd64 -e CC=x86_64-w64-mingw32-gcc illuspas/xcgo go build -v
```

## Arch and GCC
| OS        | Arch   |  GCC | G++ |
| --------   | -----  | :----:  | :----:  |
| Linux      | amd64   |   gcc     | g++     | 
| Linux        |   arm   |   arm-linux-gnueabihf-gcc  |arm-linux-gnueabihf-g++  |
| Linux        |    arm64    |  aarch64-linux-gnu-gcc  |aarch64-linux-gnu-g++  |
| Linux        |    mips64el    |  mips64el-linux-gnuabi64-gcc  |mips64el-linux-gnuabi64-g++  |
| Windows        |    amd64    |  x86_64-w64-mingw32-gcc  |x86_64-w64-mingw32-g++  |
| Windows        |    386    |  i686-w64-mingw32-gcc  |i686-w64-mingw32-g++  |
| MacOS | amd64 | x86_64-apple-darwin20-cc| x86_64-apple-darwin20-c++ |
| FreeBSD | amd64 | x86_64-pc-freebsd9-gcc| x86_64-pc-freebsd9-g++ |
