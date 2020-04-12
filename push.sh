#!/bin/bash
message = $1
#更新自己的分支
echo "更新开始！"
cp my-english-book.md ../hxc.github.io/_posts/2020-04-12-my-english-book.md
git add ./
git commit -m "message"
git push origin master 

echo "更新完成！"
echo "更新博客开始！"
cd ../hxc.github.io/_posts/
git add ./
git commit -m "message"
git push origin master
echo "更新博客结束！"
