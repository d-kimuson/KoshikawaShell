# 越川シェル

``` sh
$ git clone https://github.com/kaito1002/KoshikawaShell.git && cd KoshikawaShell && chmod a+x ./setup.sh && ./setup.sh
```

## 色設定

### 使用可能な色

| 変数名 | color  |
| :----: | :----: |
|   赤   |  RED   |
|   緑   | GREEN  |
|  黄色  | YELLOW |
|   青   |  BLUE  |
|   紫   | PURPLE |
| シアン |  CYAN  |
| グレー |  GRAY  |

### 設定方法

~/koshikawa.sh の以下の欄を変更

``` sh
# -- confing --
USER_COLOR=$GREEN
CWD_COLOR=$YELLOW
BRANCH_COLOR=$PURPLE
KOSHIKAWA_COLOR=$CYAN
# -------------
```

## エイリアス等の設定

.bashrcにエイリアス等を置いて, .bash_profileから呼ぶ.

### .bash_profile

``` sh
#!/bin/bash

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export KOSHIKAWA_ROOT=KoshikawaShellのパス
source KoshikawaShellのパス/wakashiko.sh
```

### .bashrc

``` sh
#!/bin/bash

# 種々の設定

# エイリアス等
alias cdd='cd ~/Desktop'
```