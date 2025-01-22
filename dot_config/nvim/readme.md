
## dependency

+ nvim 0.10.3

```
wget https://github.com/neovim/neovim/releases/download/v0.10.3/nvim-linux64.tar.gz
tar -zxvf nvim-linux64.tar.gz -C /opt/
fish_add_path /opt/nvim-linux-arm64/
```

arm64 linux:

```
# https://gitlab.b-data.ch/neovim/neovim/-/releases/v0.10.3
https://gitlab.b-data.ch/neovim/neovim/-/releases/v0.10.3/downloads/builds/nvim-linux-arm64.tar.gz
```

+ g++ make (Avante plugin need)

```
apt install g++ make
```

+ lua-language-server

install https://luals.github.io/#install

```bash
wget https://github.com/LuaLS/lua-language-server/releases/download/3.13.5/lua-language-server-3.13.5-linux-arm64.tar.gz
mkdir -p /opt/lua-language-server
tar -zxvf lua-language-server-3.13.5-linux-arm64.tar.gz -C /opt/lua-language-server/

fish_add_path /opt/lua-language-server
```

+ fzf

```bash
apt install fzf

which fzf
```
