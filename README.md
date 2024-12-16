# xcgo
CGO Cross Compiler, Used for compiling [NMSv3](https://github.com/NodeMedia/NodeMediaServer)

## Support Target
* Linux amd64 | arm64 | mips64el | riscv64
* Windows amd64

## Usage 
linux amd64
```
cd project_dir
docker run --rm -v $(pwd):/workdir illuspas/xcgo go build -v
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
| OS        | Arch   |  CC | CXX |
| --------   | -----  | :----:  | :----:  |
| Linux      | amd64   |   gcc     | g++     | 
| Linux        |    arm64    |  aarch64-linux-gnu-gcc  | aarch64-linux-gnu-g++  |
| Linux        |    mips64el    |  mips64el-linux-gnuabi64-gcc  | mips64el-linux-gnuabi64-g++  |
| Linux        |    riscv64    |  riscv64-linux-gnu-gcc  | riscv64-linux-gnu-g++  |
| Windows        |    amd64    |  x86_64-w64-mingw32-gcc  |x86_64-w64-mingw32-g++  |
