#!/bin/bash

# dotfilesディレクトリに移動
cd ./dotfiles

# シンボリックリンクを貼る先のディレクトリ
# 例: ホームディレクトリ
HOME_PATH=~

# dotfiles配下のすべてのファイルとディレクトリに対してリンクを作成
find . -type f | while read file; do
    # シンボリックリンクの作成先パスを生成
    target="$HOME_PATH/${file#./}"
    
    # シンボリックリンクを作成するディレクトリが存在しない場合は作成
    mkdir -p "$(dirname "$target")"
    
    # シンボリックリンクを作成
    ln -snfv "$(pwd)/$file" "$target"
done

cd ../config

CONFIG_PATH=~/.config

find . -type f | while read file; do
    # シンボリックリンクの作成先パスを生成
    target="$CONFIG_PATH/${file#./}"
    
    # シンボリックリンクを作成するディレクトリが存在しない場合は作成
    mkdir -p "$(dirname "$target")"
    
    # シンボリックリンクを作成
    ln -snfv "$(pwd)/$file" "$target"
done

