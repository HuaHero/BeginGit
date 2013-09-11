#!/bin/bash
FILE=sed_test.txt
sed -i "s:path=/ab/cd/de:path=/bc/ad/de:g" $FILE
# -i option means inplace edit,就地修改
#上述将$FILE文件中的path设置改为path=／bc/ad/de
#:是sed本应该用来的分隔符
