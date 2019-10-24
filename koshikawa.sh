#!/bin/sh

function printr() {
    #statements
    printf "\e[31m%s\e[m" $1
}

function printb() {
    #statements
    printf "\e[34m%s\e[m" $1
}

function printlg() {
    #statements
    printf "\e[92m%s\e[m" $1
}

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

printr "こしかわ2.0"
printf "「おー、"
printlg $USERNAME
printf " か。適当にあがっていいよ。」"
read

while :
do
    index=$(($RANDOM%22))
    printlg "ひとりごと用こしかわ"
    printf "「"
    printf ${array[$index]}
    printf "」\n"
    printr "こしかわ2.0"
    printf " なにする? >> "
    printf " "
    read tmp1
    if [ "${tmp1}" != "exit" ]; then
        $tmp1
    else
        echo "今日は帰さないぞ！"
    fi
done

stty intr '^C' susp '^Z'