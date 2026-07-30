# MyMacEnv

## -== OS Settings ==-

### Disable the drop-shadow in window screenshots
```bash
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer
```

### Disable Chrome Swipe to Go Back Gesture
```bash
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
```

### Change Screenshot Save Location
Create a new folder and name it "screenshots" on desktop.
```bash
defaults write com.apple.screencapture location ~/Desktop/screenshots/
killall SystemUIServer
```

### Name
macOS 实际上有三个相关名称，最好一次统一设置：
```bash
# Finder 和系统界面显示的名称，可以有空格。
sudo scutil --set ComputerName "Mac mini"
# 局域网 Bonjour/mDNS 名称，决定 macmini.local。
sudo scutil --set LocalHostName "macmini"
# 终端、SSH 等场景使用的主机名。
sudo scutil --set HostName "macmini"
```

## -== Softwares ==-

### Aerial
https://github.com/JohnCoates/Aerial, Apple TV Aerial Screensaver for Mac.

### AppCleaner
https://freemacsoft.net/appcleaner/, thoroughly uninstall unwanted apps.

### bat
https://github.com/sharkdp/bat, A cat(1) clone with wings.
```bash
alias cat="bat --plain --paging=never"
alias c="bat --paging=never"
# Enable mouse scrolling when using bat in tmux that enables mouse support
export BAT_PAGER='less -R -K --mouse'
```

### Bitwarden
https://bitwarden.com/, Open Source Password Management.

### BlackHole
https://github.com/ExistentialAudio/BlackHole, allows applications to pass audio to other applications.

### Caffeine
http://lightheadsw.com/caffeine/, don't let your Mac fall asleep.

### Cavalry
https://cavalry.scenegroup.co/, 2D animation.

### Chrome
* AdBlock
* Awesome Screenshot and Screen Recorder
* Bitwarden
* Grammarly
* JSON Viewer - https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh
* Keepa - Amazon Price Tracker
* Rakuten - cashback
* Wappalyzer - 检查一个网站都用了那些技术来开发

### Clipy
https://clipy-app.com/, clipboard manager for macOS. ClipMenu (http://www.clipmenu.com/) is dead.

### DaVinci Resolve
https://www.blackmagicdesign.com/products/davinciresolve, video editing.

### eza
https://github.com/eza-community/eza, a modern alternative to ls.
```bash
alias ls='eza --icons=auto'
alias ll='eza --icons=auto --git -lh'
alias la='eza --icons=auto --git -lah'
```

### FileZilla
https://filezilla-project.org/

### Fonts

#### JetBrainsMonoNL Nerd Font Mono
https://www.nerdfonts.com/, JetBrains Mono 的关闭连字（NL）、图标等宽（Mono）版本。

#### Sarasa Term（更纱字体）
https://github.com/lumiknit/iosevka-lumi, 用来跟 JetBrainsMonoNL Nerd Font Mono 配合，在终端显示 CJK 字符的终端字体。在 macOS 下选择 SarasaLumi 里面的 TTF-Unhinted（未做屏幕优化）版本。

#### LXGW WenKai（霞鹜文楷）
https://github.com/lxgw/LxgwWenKai, 兼具仿宋和楷体风格的漂亮简体中文字体。

### foobar2000
https://www.foobar2000.org/, music player.

### fzf
https://github.com/junegunn/fzf, A command-line fuzzy finder.

用 Homebrew 安装好之后，还需要在 .zshrc 里添加如下内容：
```bash
# Skip some folders while scanning.
export FZF_ALT_C_OPTS="--walker-skip .git,node_modules,target,__pycache__,.venv,venv,.cache,Library"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
```

常用组合键：
- ctrl + t: 搜索文件并插入当前命令
- alt + c: 搜索目录并进入
- ctrl + r: 模糊搜索命令历史

### Hex Fiend
http://ridiculousfish.com/hexfiend/

### Homebrew
http://brew.sh/, The missing package manager for macOS.
* ack - http://beyondgrep.com/
* colordiff
* faad2 - http://www.audiocoding.com/faad2.html, AAC decoder.
* ffmpeg
* graphviz - http://www.graphviz.org/, Graph Visualization Software.
* imagemagick, ImageMagick - http://www.imagemagick.org/
* wget
* youtube-dl - https://github.com/rg3/youtube-dl
* lame - http://lame.sourceforge.net/
* pandoc - http://pandoc.org/
* s3cmd - http://s3tools.org/s3cmd
* sloccount, SLOCCount - http://www.dwheeler.com/sloccount/
* tree

### IINA
https://iina.io/, Media player. Better than MPlayerX.

### ImageOptim
https://imageoptim.com/, Saves disk space & bandwidth by compressing images without losing quality.

### Keka
http://www.kekaosx.com/en/, a free file archiver for macOS.

### Kid3
https://kid3.sourceforge.io/, easily tag multiple MP3, Ogg/Vorbis, FLAC, MPC, MP4/AAC, MP2, Opus, Speex, TrueAudio, WavPack, WMA, WAV and AIFF files.

### LICEcap
http://www.cockos.com/licecap/Capture, screen to .GIF.

### Menu World Time
https://apps.apple.com/us/app/menu-world-time/id1446377255?mt=12, Get times for cities around the world straight from the menu bar. 可以用 Reykjavík 来代替 UTC。

### MindNode
https://mindnode.com/, Mindmapping & Brainstorm Ideas.

### Mole
https://github.com/tw93/mole, Clean, uninstall, analyze, optimize, and monitor your Mac from the terminal.

### Neovim
https://neovim.io/, hyperextensible Vim-based text editor.
```bash
alias vi="nvim"
```
之后可以再安装 LazyVim(https://www.lazyvim.org/) 。

### Noizio
http://noiz.io/, white noise.

### Notion
https://www.notion.com/

### nvm
https://github.com/nvm-sh/nvm, 安装和管理多个不同版本的 Node.js，不要使用 Homebrew 或者官方安装包安装 Node.js。
```bash
nvm install 22.19.0  # 安装特定版本
nvm use 18.16.0  # 把当前终端进程使用的 Node.js 版本切到某个版本
nvm alias default 20  # 把全局 Node.js 切换到某个版本，新开终端也有效
```

### Obsidian
https://obsidian.md/

### OpenInWezTerm
https://github.com/porter-liu/OpenInWezTerm

### p4merge
https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge, file comparison.

### Quick Look
* ProvisionQL - https://github.com/ealeksandrov/ProvisionQL, Quick Look for ipa & provision.
* QLCARFiles - https://blog.timac.org/2018/1112-quicklook-plugin-to-visualize-car-files/, Quick Look for .CAR files
* SourceCodeSyntaxHighlight - https://github.com/sbarex/SourceCodeSyntaxHighlight, Quick Look plugin for source code with syntax highlighting.
* QLMarkdown - https://github.com/toland/qlmarkdown, QuickLook generator for Markdown files.

### Raycast
https://www.raycast.com/

~/.config/raycast/scripts/copy_pwd_to_the_clipboard
```bash
#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title pwd
# @raycast.mode silent

DIR=$(osascript -e 'tell application "Finder" to POSIX path of (insertion location as alias)')
printf %s "$DIR" | pbcopy
```

### Rime（中州韵/鼠须管）
https://rime.im/ ，比较下来，雾凇拼音再加上一些自己的调整是最接近搜狗拼音的体验的
* Rime 输入法指北 - https://jiz4oh.com/2020/10/how-to-use-rime/
* 雾凇拼音 - https://github.com/iDvel/rime-ice
* Rime Squirrel 鼠须管输入法配置详解 - https://ssnhd.com/2022/01/06/rime/
* Rime输入法安装与配置（Rime_pro） - https://www.thisfaner.com/p/rime/
* 再也不用为中文输入法而烦恼了（四叶草） - https://www.fkxxyz.com/d/cloverpinyin/
* 好用好看好玩的输入法 —— 鼠须管配置使用 - https://blog.isteed.cc/post/squirrel-customization-2022/
* RIME 西米 - for Squirrel（外观配置工具） - https://gjrobert.github.io/Rime-See-Me-squirrel/
* Rime Squirrel 鼠须管输入法皮肤效果 - https://ssnhd.com/2022/01/11/rime-skin/

### Shottr
https://shottr.cc/, 功能很强的可以做 OCR 的截图软件。

### SizeUp
http://www.irradiatedsoftware.com/sizeup/, powerful, keyboard-centric window management.

### Skitch
https://evernote.com/skitch/

### Sourcetree
https://www.sourcetreeapp.com/, git GUI.

### Starship
https://starship.rs/, 强大且高性能的终端提示符自定义工具。配置文件在 ~/.config/starship.toml。

```toml
add_newline = false

format = "$python$directory$git_branch$git_status$character"

[python]
format = '[(\($virtualenv\) )]($style)'
style = "bold yellow"

[directory]
style = "blue"
truncation_length = 0
truncate_to_repo = false

[git_branch]
symbol = " "
style = "purple"

[git_status]
style = "red"

[character]
success_symbol = "[❯](green)"
error_symbol = "[❯](red)"
```

需要在 .zshrc 里添加 `eval "$(starship init zsh)"`。

### stats
https://github.com/exelban/stats，menu bar 上的系统性能监控工具。

### SquidMan
http://squidman.net/squidman/, macOS graphical installer and manager for the Squid proxy cache.

### Sublime Text 4
https://www.sublimetext.com/
* ConvertToUTF8 - https://github.com/seanliang/ConvertToUTF8, edit and save the files which encodings are not supported by Sublime Text currently.
* Indent XML - https://github.com/alek-sys/sublimetext_indentxml, reindents XML and JSON files.
  * shift+command+P, enter "Intend XML"
* Pretty JSON - reindents JSON files.
  * cmd+shift+p - Install Package Control
  * cmd+shift+p - Package Control: Install Package, Pretty JSON
  * cmd+ctl+j to reindent JSON file
 
```bash
# 在 CLI 下使用 Sublime Text 的方式
sudo mkdir -p /usr/local/bin
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

### System Preferences
* Network Link Conditioner - https://developer.apple.com/download/more/?q=Additional%20Tools, http://nshipster.com/network-link-conditioner/

### Tailscale
https://tailscale.com/, VPN.

### TIDAL
https://tidal.com/, Hi-Fi music streaming.

### Time Out
http://www.dejal.com/timeout/, install from the App Store.

### TinkerTool
https://www.bresink.com/osx/TinkerTool.html

### tmux

#### Catppuccin for Tmux
https://github.com/catppuccin/tmux, Soothing pastel theme for Tmux.

Install:
```bash
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.3.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
# 之后需要在 .tmux.conf 里添加 run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
```

### VeraCrypt
https://www.veracrypt.fr/code/VeraCrypt/, open-source disk encryption software.

### volumeHUD
https://github.com/dannystewart/volumeHUD, 在 macOS 26 及以上版本获得之前版本里调音量的 HUD 指示。

### WeChat
https://mac.weixin.qq.com/

### WezTerm
https://wezterm.org/, 可以通过 Lua 高度定制的高性能终端。配置文件在 ~/.wezterm.lua。

### Xcode
* Alcatraz - http://alcatraz.io/
* xcpretty - https://github.com/supermarin/xcpretty

To avoid "invalid byte sequence in US-ASCII" error, go "Manage Jenkins"->"Configure System". Under "Global properties", check "Environment variables" and add a variable
```
Name: LC_ALL
Value: en_US.UTF-8
```

A makefile sample:
```makefile
XCPRETTY := $(shell ! command -v /usr/local/bin/xcpretty >/dev/null 2>&1 || echo "| /usr/local/bin/xcpretty")
all:
	set -o pipefail && xcodebuild -usage ${XCPRETTY}
```

### Zoom
https://www.zoom.com/

### zoxide
https://github.com/ajeetdsouza/zoxide, A smarter cd command.

用 Homebrew 安装之后需要在 .zshrc 里添加以下内容：
```bash
eval "$(zoxide init zsh)"
```

### 欧路词典
https://www.eudic.net/
