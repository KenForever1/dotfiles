
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

推荐采用git clone安装到.fzf中，
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# ~/.fzf/install
# 在init.lua配置中，会自动执行安装
# { 'junegunn/fzf', dir = '~/.fzf', build = './install --all' },
```

+ copy paste 配置

ubuntu 安装wl-clipboard:

```bash
sudo apt install wl-clipboard
```
<ctrl-c>: copy
<ctrl-p>：paste

macos 使用pbpaste和pbcopy

+ 安装字体CodeNewRomanNerdFontMono

安装字体是为了更好的显示图标，避免乱码，字体优美。

ubuntu安装字体：
```bash
# https://www.nerdfonts.com/font-downloads
mkdir tmp && cd tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CodeNewRoman.zip
unzip CodeNewRoman.zip
```

```bash
$ ls
CodeNewRoman.zip                  CodeNewRomanNerdFontMono-Bold.otf     CodeNewRomanNerdFontPropo-Italic.otf
CodeNewRomanNerdFont-Bold.otf     CodeNewRomanNerdFontMono-Italic.otf   CodeNewRomanNerdFontPropo-Regular.otf
CodeNewRomanNerdFont-Italic.otf   CodeNewRomanNerdFontMono-Regular.otf  README.md
CodeNewRomanNerdFont-Regular.otf  CodeNewRomanNerdFontPropo-Bold.otf    license.txt
```

install
```bash
sudo cp *.otf /usr/share/fonts/truetype/
sudo fc-cache -f -v
```

查看字体
```bash
fc-list
```

+ kitty base font config (如果使用kitty作为终端)

wsl2中ubuntu安装kitty的方法：[](https://github.com/danielbisar/settings/blob/main/guides/kitty-on-windows-with-wsl2.md)

如果遇到打开报错：
```
[074 17:55:58.927171] [glfw error 65544]: Wayland: Failed to connect to display
GLFW initialization failed
```

```
https://github.com/glfw/glfw/issues/1390
I removed glfw-wayland.so in /lib/kitty/kitty and run kitty. Then problem solved
```

配置文件：

```bash
$ cat ~/.config/kitty/kitty.conf
font_size 20.0
font_family           CodeNewRoman Nerd Font Mono
italic_font           CodeNewRoman Nerd Font Mono
bold_font             CodeNewRoman Nerd Font Mono
bold_italic_font      CodeNewRoman Nerd Font Mono
```