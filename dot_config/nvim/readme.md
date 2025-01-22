
## dependency

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
