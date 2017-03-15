# MyMacEnv

## -== OS Settings ==-

### Disable the drop-shadow in window screenshots
```bash
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer
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

### Alfred
* Sougou Pinyin can't switch between Chinese & English using shift key
  * Preferences -> File Search -> Advanced, uncheck "Quick Look: ⇧ to Quick Look selected item"
  * Preferences -> Appearance -> Options, change "Focusing" to "Compatibility Mode"
* Web Search
  * jira, https://zoomvideo.atlassian.net/browse/{query}

### AppCleaner
https://freemacsoft.net/appcleaner/, thoroughly uninstall unwanted apps.

### Avira
https://www.avira.com/, protect yourself from ransomware with award-winning free antivirus.

### Caffeine
http://lightheadsw.com/caffeine/, don't let your Mac fall asleep.

### ClipMenu
http://www.clipmenu.com/, clipboard Manager for macOS.

### Cornerstone
https://www.zennaware.com/cornerstone/, subversion GUI.

### Dash
https://kapeli.com/dash, instant offline access to 150+ API documentation sets.

### DiffMerge
https://sourcegear.com/diffmerge/

### diumoo
http://diumoo.net/, Douban FM.

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

### Go2shell
http://zipzapmac.com/go2shell, opens a terminal window to the current directory in Finder.

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
* lame - http://lame.sourceforge.net/
* pandoc - http://pandoc.org/
* s3cmd - http://s3tools.org/s3cmd
* sloccount, SLOCCount - http://www.dwheeler.com/sloccount/
* tree
* wget
* youtube-dl - https://github.com/rg3/youtube-dl

### iTerm2
https://www.iterm2.com/

### Keka
http://www.kekaosx.com/en/, a free file archiver for macOS.

### LICEcap
http://www.cockos.com/licecap/Capture, screen to .GIF.

### MPlayerX
http://mplayerx.org/

### Noizio
http://noiz.io/, white noise.

### QQ
http://im.qq.com/macqq/

### Quick Look
* ProvisionQL - https://github.com/ealeksandrov/ProvisionQL, Quick Look for ipa & provision.
* QLMarkdown - https://github.com/toland/qlmarkdown, QuickLook generator for Markdown files.

### SizeUp
http://www.irradiatedsoftware.com/sizeup/, powerful, keyboard-centric window management.

### Skitch
https://evernote.com/skitch/

### Source Code Pro
https://github.com/adobe-fonts/source-code-pro

### SquidMan
http://squidman.net/squidman/, macOS graphical installer and manager for the Squid proxy cache.

### Sublime Text 3
https://www.sublimetext.com/3
* ConvertToUTF8 - https://github.com/seanliang/ConvertToUTF8, edit and save the files which encodings are not supported by Sublime Text currently.
* Indent XML - https://github.com/alek-sys/sublimetext_indentxml, reindents XML and JSON files.
  * shift+command+P, enter "Intend XML"

### Time Out
http://www.dejal.com/timeout/

### VOX
http://coppertino.com/vox/mac

### WeChat
https://mac.weixin.qq.com/

### Xcode
* Alcatraz - http://alcatraz.io/
* XcodeColors - https://github.com/robbiehanson/XcodeColors
* xcpretty - https://github.com/supermarin/xcpretty
```makefile
XCPRETTY := $(shell ! command -v /usr/local/bin/xcpretty >/dev/null 2>&1 || echo "| /usr/local/bin/xcpretty")
all:
	set -o pipefail && xcodebuild -usage ${XCPRETTY}
```

### 欧路词典
https://www.eudic.net/

### 搜狗拼音
http://pinyin.sogou.com/mac/
