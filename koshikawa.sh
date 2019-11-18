#!/bin/bash

source ${KOSHIKAWA_ROOT}/wakashiko.sh
source ~/.bashrc

RED="\e[31m%s\e[m"
GREEN="\e[32m%s\e[m"
YELLOW="\e[33m%s\e[m"
BLUE="\e[34m%s\e[m"
PURPLE="\e[35m%s\e[m"
CYAN="\e[36m%s\e[m"
GRAY="\e[37m%s\e[m"

function print_colored() {
    # $1=color, $2=statement
    printf "$1" $2
}

function color_chech() {
    print_colored $RED "RED"; printf "\n"
    print_colored $GREEN "GREEN"; printf "\n"
    print_colored $YELLOW "YELLOW"; printf "\n"
    print_colored $BLUE "BLUE"; printf "\n"
    print_colored $PURPLE "PURPLE"; printf "\n"
    print_colored $CYAN "CYAN"; printf "\n"
    print_colored $GRAY "GRAY"; printf "\n"
}


# -- confing --
USER_COLOR=$GREEN
CWD_COLOR=$YELLOW
BRANCH_COLOR=$PURPLE
KOSHIKAWA_COLOR=$CYAN
# -------------

clear
USERNAME=$(whoami)
tmp1="None"
tmp2="None"
dir="None"

array=()
# 独り言配列⇓
array+=( "牛乳飲んだら腹壊したんだけど..." )
array+=( "なんか飽きてきた" )
array+=( "えすけーぷせみころん押してみ?(押し気味)" )
array+=( "ドラクエさいっこーぅうう" )
array+=( "卵焼き食べる?" )
array+=( "お尻に青なじみ" )
array+=( "メニューの裏にメニューがあると思うか" )
array+=( "それを晩御飯に差し出す気か" )
array+=( "これゴミじゃないんです" )
array+=( "俺って天然なんだよね" )
array+=( "動くな、じっとしてろ" )
array+=( "アマレット炭酸割りオレンジジュース少々" )
array+=( "それまりもだよ" )
array+=( "もりもりスライム" )
array+=( "重曹って便利だよね" )
array+=( "お前それ漫画カバーじゃん" )
array+=( "5円玉って何かの部品になりそうじゃね" )
array+=( "いばら「き」な、次間違えたら殺しはしない、勝手に氏ね" )
array+=( "なんだその目は、…あーそういうことね納得した" )
array+=( "それ始めて知ったわ" )
array+=( "カーテンコール" )
array+=( "クエン酸たくさん摂れば人間のポテンシャルが解放され" )
index=0

stty intr '^P'
stty susp ''

# shopt -s expand_aliases

print_colored $KOSHIKAWA_COLOR "こしかわ2.0"
printf "「おー、"
print_colored $USER_COLOR $USERNAME
printf " か。適当にあがっていいよ。」"
read

shopt -s expand_aliases

while :
do
    index=$(($RANDOM%22))
    cwd=$(echo `pwd` | sed "s#$HOME#~#g")
    is_branch=0
    if [ -d ./.git ]; then
        is_branch=1
        branch=$(git branch | grep "*" | cut -f 2 -d " ")
    fi

    if [ $(($RANDOM%10)) -eq 5 ]; then
        print_colored $KOSHIKAWA_COLOR "ひとりごと用こしかわ"
        printf "「"
        printf ${array[$index]}
        printf "」\n"
    fi

    print_colored $USER_COLOR "$USERNAME"
    printf " in "
    print_colored $CWD_COLOR "${cwd}"
    if [ ${is_branch} -eq 1 ]; then
        printf " at "
        print_colored $BRANCH_COLOR "${branch}"
    fi

    printf "\n"

    read -e -p "なにする? >> " CMD
    history -s "$CMD"

    if [ "${CMD}" == "exit" ]; then
        echo "今日は帰さないぞ！"
    elif [ "${CMD}" == "ls" ]; then
        ls -G
    else
        stty intr '^C' susp '^Z'
        eval ${CMD}
        stty intr '^P'
        stty susp ''
    fi
done

stty intr '^C' susp '^Z'
