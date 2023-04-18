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

### Clipy
https://clipy-app.com/, clipboard manager for macOS. ClipMenu (http://www.clipmenu.com/) is dead.

### Cornerstone
https://www.zennaware.com/cornerstone/, subversion GUI.

### Dash
https://kapeli.com/dash, instant offline access to 150+ API documentation sets.

### DiffMerge
https://sourcegear.com/diffmerge/

### Dropbox
https://www.dropbox.com/

### DTerm
https://github.com/muhqu/dterm, a command line anywhere and everywhere. (http://decimus.net/dterm does not work in Sierra)

### Evernote
https://evernote.com/

### f.lux
https://justgetflux.com/, makes the color of your computer's display adapt to the time of day.

### FileZilla
https://filezilla-project.org/

### Fonts

#### JetBrains Mono
https://www.jetbrains.com/lp/mono/, A typeface for developers.
```
"font_face": "JetBrains Mono",
"font_size": 15,
"line_padding_bottom": 1,
"line_padding_top": 1,
```

#### Source Code Pro
https://github.com/adobe-fonts/source-code-pro, Monospaced font family for user interface and coding environments.
```
"font_face": "Source Code Pro",
"font_size": 14,
```

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

### Monosnap
https://monosnap.com/

### Noizio
http://noiz.io/, white noise.

### Petal
https://github.com/ilime/Petal, Douban FM. Better than diumoo (http://diumoo.net/).

### QQ
http://im.qq.com/macqq/

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

### SizeUp
http://www.irradiatedsoftware.com/sizeup/, powerful, keyboard-centric window management.

### Skitch
https://evernote.com/skitch/

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

### Time Out
http://www.dejal.com/timeout/

### TinkerTool
https://www.bresink.com/osx/TinkerTool.html

### VOX
http://coppertino.com/vox/mac

### VeraCrypt
https://www.veracrypt.fr/code/VeraCrypt/, open-source disk encryption software.

### WeChat
https://mac.weixin.qq.com/

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

### 欧路词典
https://www.eudic.net/
