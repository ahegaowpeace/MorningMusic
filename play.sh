#!/bin/bash
trap 'echo 中断されました; exit' SIGINT

###ランダムlist作成###
ls -1 【音楽ファイルのパス】 | sort -R > 【list.txtファイルのパス】

###全再生###
while read l
do
	/bin/mpg123 【音楽ファイルのパス】/${l}
done < 【list.txtファイルのパス】
