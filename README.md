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

## -== Softwares ==-

### Aerial
https://github.com/JohnCoates/Aerial, Apple TV Aerial Screensaver for Mac.

### ~~Alfred~~（用 Raycast 替代）
* Sougou Pinyin can't switch between Chinese & English using shift key
  * Preferences -> File Search -> Advanced, uncheck "Quick Look: ⇧ to Quick Look selected item"
  * Preferences -> Appearance -> Options, change "Focusing" to "Compatibility Mode"
* Web Search
  * jira, https://zoomvideo.atlassian.net/browse/{query}

### AppCleaner
https://freemacsoft.net/appcleaner/, thoroughly uninstall unwanted apps.

### Avira
https://www.avira.com/, protect yourself from ransomware with award-winning free antivirus.

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

### Dash
https://kapeli.com/dash, instant offline access to 150+ API documentation sets.

### DaVinci Resolve
https://www.blackmagicdesign.com/products/davinciresolve, video editing.

### DTerm
https://github.com/muhqu/dterm, a command line anywhere and everywhere. (http://decimus.net/dterm does not work in Sierra)

### FileZilla
https://filezilla-project.org/

### Fonts

#### ~~JetBrains Mono~~（用 JetBrainsMonoNL Nerd Font Mono 代替）
https://www.jetbrains.com/lp/mono/, A typeface for developers.
```
"font_face": "JetBrains Mono",
"font_size": 15,
"line_padding_bottom": 1,
"line_padding_top": 1,
```

#### JetBrainsMonoNL Nerd Font Mono
https://www.nerdfonts.com/，JetBrains Mono 的关闭连字（NL）、图标等宽（Mono）版本。

#### Sarasa Term（更纱字体）
https://github.com/lumiknit/iosevka-lumi，用来跟 JetBrainsMonoNL Nerd Font Mono 配合，在终端显示 CJK 字符的终端字体。在 macOS 下选择 SarasaLumi 里面的 TTF-Unhinted（未做屏幕优化）版本。

#### Source Code Pro
https://github.com/adobe-fonts/source-code-pro, Monospaced font family for user interface and coding environments.
```
"font_face": "Source Code Pro",
"font_size": 14,
```

### foobar2000
https://www.foobar2000.org/, music player.

### Go2shell
http://zipzapmac.com/go2shell, opens a terminal window to the current directory in Finder. Use https://github.com/onmyway133/FinderGo instead.

Use https://github.com/Breathleas/Go2Shell.

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

### iTerm2
https://www.iterm2.com/
* Hard Hacker Theme - https://github.com/hardhackerlabs/themes
* exa - https://github.com/ogham/exa

### Keka
http://www.kekaosx.com/en/, a free file archiver for macOS.

### Kid3
https://kid3.sourceforge.io/, easily tag multiple MP3, Ogg/Vorbis, FLAC, MPC, MP4/AAC, MP2, Opus, Speex, TrueAudio, WavPack, WMA, WAV and AIFF files.

### LICEcap
http://www.cockos.com/licecap/Capture, screen to .GIF.

### MindNode
https://mindnode.com/, Mindmapping & Brainstorm Ideas.

### Noizio
http://noiz.io/, white noise.

### Notion
https://www.notion.com/

### Obsidian
https://obsidian.md/

### p4merge
https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge, file comparison.

### Quick Look
* ProvisionQL - https://github.com/ealeksandrov/ProvisionQL, Quick Look for ipa & provision.
* QLCARFiles - https://blog.timac.org/2018/1112-quicklook-plugin-to-visualize-car-files/, Quick Look for .CAR files
* SourceCodeSyntaxHighlight - https://github.com/sbarex/SourceCodeSyntaxHighlight, Quick Look plugin for source code with syntax highlighting.
* QLMarkdown - https://github.com/toland/qlmarkdown, QuickLook generator for Markdown files.
* QuicklookStephen - https://github.com/whomwah/qlstephen, view plain text files without a file extension.

### Raycast
https://www.raycast.com/

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
https://starship.rs/，强大且高性能的终端提示符自定义工具。配置文件在 ~/.config/starship.toml。

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

### stats
https://github.com/exelban/stats，menu bar 上的系统性能监控工具。

### SquidMan
http://squidman.net/squidman/, macOS graphical installer and manager for the Squid proxy cache.

### Sublime Text 3
https://www.sublimetext.com/3
* ConvertToUTF8 - https://github.com/seanliang/ConvertToUTF8, edit and save the files which encodings are not supported by Sublime Text currently.
* Indent XML - https://github.com/alek-sys/sublimetext_indentxml, reindents XML and JSON files.
  * shift+command+P, enter "Intend XML"
* Pretty JSON - reindents JSON files.
  * cmd+shift+p - Install Package Control
  * cmd+shift+p - Package Control: Install Package, Pretty JSON
  * cmd+ctl+j to reindent JSON file

### System Preferences
* Network Link Conditioner - https://developer.apple.com/download/more/?q=Additional%20Tools, http://nshipster.com/network-link-conditioner/

### Tailscale
https://tailscale.com/, VPN.

### TIDAL
https://tidal.com/, Hi-Fi music streaming.

### Time Out
http://www.dejal.com/timeout/

### TinkerTool
https://www.bresink.com/osx/TinkerTool.html

### VeraCrypt
https://www.veracrypt.fr/code/VeraCrypt/, open-source disk encryption software.

### WeChat
https://mac.weixin.qq.com/

### WezTerm
https://wezterm.org/，可以通过 Lua 高度定制的高性能终端。配置文件在 ~/.wezterm.lua。

```lua
local wezterm = require("wezterm")

return {
  font = wezterm.font_with_fallback({
    "JetBrainsMonoNL Nerd Font Mono",
    "Sarasa Term Lumi X",
    "Apple Color Emoji",
  }),

  font_rules = {
    {
      intensity = "Bold",
      font = wezterm.font_with_fallback({
        { family = "JetBrainsMonoNL Nerd Font Mono", weight = "Bold" },
        { family = "Sarasa Term Lumi X", weight = "Bold" },
        "Apple Color Emoji",
      }),
    },
  },

  font_size = 21,
  line_height = 1.05,

  cell_width = 1.0,

  enable_tab_bar = true,
  use_fancy_tab_bar = false,

  window_padding = {
    left = 8,
    right = 8,
    top = 6,
    bottom = 6,
  },

  color_scheme = "Catppuccin Mocha",

  enable_wayland = false,

  max_fps = 120,

  animation_fps = 120,

  front_end = "WebGpu",

  cursor_blink_rate = 500,

  default_cursor_style = "BlinkingBar",
}
```

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

### 欧路词典
https://www.eudic.net/
