#!/bin/bash
message=$1
book="2020-04-12-my-english-book.md"
#更新自己的分支
echo "更新开始！"
cp my-english-book.md ../hxc.github.io/_posts/$book
git add ./
git commit -m "$message"
git push origin master 

echo "更新完成！"
echo "更新博客开始！"

cd ../hxc.github.io/_posts/
#添加固定的头

echo "---
layout:     post                    # 使用的布局（不需要改）
title:      My First Post               # 标题 
subtitle:   Hello World, Hello Blog #副标题
date:       2017-02-06              # 时间
author:     BY                      # 作者
header-img:    #这篇文章标题背景图片
catalog: true                       # 是否归档
tags:                               #标签
    - 生活
---" > $book 
git add ./
git commit -m "$message"
git push origin master
echo "更新博客结束！"
