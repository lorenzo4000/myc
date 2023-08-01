# MyC
This is a compiled C-like language with cool features like boundary checking. Making it for fun!

#### NOTE
The language and the compiler are in development, you shouldn't use them for real projects!

## Compile
### unix
```
./build.sh
```

### wsl
#### Install packages needed for wsl (Ubuntu)
```bash
# Installing build-essential (contains build tools, gcc)
sudo apt-get install -y build-essential

# Updating information of available packages
sudo apt-get update

# Installing gdb
sudo apt-get install -y gdb

# Installing go via snap (confined to classic)
sudo snap install go --classic
```

### Run
```
myc [options] file [...]
```
