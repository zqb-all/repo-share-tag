# repo-share-tag

## What is repo-share-tag
repo-share-tag is a shell script to help you share local git tag to others.

## How to use
```bash
#when your local git tag is test-v1, run
./repo_share_tag.sh test-v1

#then send update-tag-test-v1.sh to others
```
## Example
```bash
#create tag
repo forall -c git tag test-v1
#cerate script
./repo_share_tag.sh test-v1

#delete tag(just like someone don't have these tag)
repo forall -c git tag -d test-v1
#create tag by script
./update-tag-test-v1.sh
```


# repo-share-tag 中文版本说明

## repo-share-tag 是什么

EasierMinicom 帮助你将repo管理下的git仓库tag分享给他人。

## 如何使用
```bash
#当你本地的tag名为test-v1, 执行
./repo_share_tag.sh test-v1

#然后发送 update-tag-test-v1.sh 给他人即可
```
## 例子
```bash
#创建tag
repo forall -c git tag test-v1
#生成脚本
./repo_share_tag.sh test-v1

#删除tag(用于模拟没有这些tag信息的人)
repo forall -c git tag -d test-v1
#使用脚本创建tag
./update-tag-test-v1.sh
```
