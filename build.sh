#!/bin/sh
# 判断目录是不是已经存在，如果不存在则创建，存在则输出“dir exist”
# dirname=$1 则可以执行命令时传入参数:sh test.sh dist(创建名称为dist的目录)
dirname='source'
echo "the dir name is $dirname"
if [ ! -d $dirname  ];then
  mkdir $dirname
else
  echo dir exist
fi

# bash 下的sh gz压缩  :tar -czf dist/dist.zip dist
tar -czf $dirname/dist.tar.gz dist
echo 打包成功,输出位置为:[`pwd`/$dirname/dist.tar.gz]
