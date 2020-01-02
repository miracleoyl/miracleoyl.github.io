#!/bin/bash
#This shell script is used to count our UI scripts after Deduction.
#count total java files / java files in deprecate folder 
#You can put it to your folder . e.g.: C:\Users\I073330\git\gradle-cdpRevolution-module\src\main\java\com\successfactors\saf\tests\cdpRevolution
echo "current folder is: `pwd`"
git pull
totalFileNum=`find -name "*.java" |wc -l` #千万记住删掉等号=旁边的空格，否则报command not found 错误
                                          #wc -l统计输出信息的行数，因为已经过滤得只剩一般文件了，
                                          #所以统计结果就是一般文件信息的行数，又由于一行信息对应一个文件，所以也就是文件的个数。
echo "total UI scripts:  $totalFileNum"
cd deprecate
deprecateNum=`find -name "*.java" |wc -l`
echo "total deprecated UI scripts:  $deprecateNum"
remaining=`expr $totalFileNum - $deprecateNum`
echo "Remaining UI scripts (total - deprecate ):$remaining"