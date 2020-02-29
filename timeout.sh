#!/bin/bash

# タイムアウト設定 (5秒間入力がない場合、プロセスを終了する)
trap "echo 'Time out!' 1>&2 ; exit 1" 2
(sleep 5; kill -2 $$) &                 # タイムアウト用プロセス
timeoutpid=$!                           # タイムアウト用プロセスID

# タイムアウト対象処理
# ユーザが入力した文字をそのまま出力する。
# 5秒以内に入力がない場合、タイムアウトを発生させ処理を終了する。
echo 'input : '
read inputstr
# 5秒以内に入力があった場合、タイムアウト用プロセスを終了する。
if [ $(ps -ef | awk '{print $2}' | grep "$timeoutpid" | wc -l) -ne 0 ] ; then
  kill $timeoutpid
fi
echo "input -> $inputstr"
