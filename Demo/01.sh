
#!/bin/bash

echo "--------显示消息--------"
date
who

echo $PATH

ls -l 00.sh

echo this is a test
echo "This is a test to see if you're paying attention"

echo -n "The time and date are:"
date
echo "Let's see who's logged into the system:"
who


echo "--------使用变量--------"

#   环境变量
echo "User info for userid: $USER"
echo "UID: $UID"
echo "HOME: $HOME"
echo "this cost of the item is \$15"

#   用户变量
days=10
guest="B"
echo "$guest checked in $days days ago"

days=5
guest="A"
echo "$guest checked in $days days ago"

a=10
b=$a
echo "$b"
echo "b"


#   命令替换
test1=`date`
test2=$(date)

echo "test1: $test1"
echo "test2: $test2"


echo "--------重定向--------"
#   如果重定向输出文件已经存在，新的文件会覆盖已经有的文件
test6="01-重定向文件"
date > $test6
ls -l $test6
cat $test6
#   不覆盖 追加输出使用 >>
date >> $test6
who >> $test6
cat $test6

#   wc 文本行数，文本词数，文本字节数
wc < $test6
#wc < "1.txt"

echo "--------管道--------"
#   管道串起来的命令会同时执行
ls
ls | sort >> $test6

echo "--------数学运算--------"
#   expr 能是被少数数学和字符串操作
#   容易理解错的符号 用 \ 标出来
echo $[5*2+1]
ecpr 5 * 2
expr 5 \* 2

var1=10
var2=20
var3=$(expr $var2 / $var1)
echo The result is $var3

echo "[数学运算]"
var1=$[1+2]
echo $var1

var2=$[$var1+3]
echo $var2

var4=$[$var1 * ($var2 + 2)]
echo $var4

var5=$[$var2 / $var1]
echo $var5

# 终端中直接使用 bc 计算器
#bc -q
#3.44 / 5
#0
#scale=4
#3.44 / 5
#.6880
#quit
#$

echo "--------脚本中使用 bc 计算器--------"
variable=$(echo "options; expression" | bc)

var6=$(echo "scale=4; 3.14 / 5" | bc)
echo the answer is $var6

var1=100
var2=45
var3=$(echo "scale=5; $var1 / $var2" | bc)
echo "answer is $var3"
echo "------1"

var1=20
var2=3.14159
var3=$(echo "scale=4; $var1 * $var1" | bc)
var4=$(echo "scale=2; $var3 * $var2" | bc)
echo "The final result is $var4"
echo "------2"

var1=10.46
var2=43.67
var3=33.2
var4=71
var5=$(bc << EOF
scale = 10
a1 = ( $var1 * $var2)
b1 = ($var3 * $var4)
a1 + b1
EOF
)
echo "The final answer for this mess is $var5"


echo "--------退出--------"
#aSaqs 无效命令会返回状态码 127
echo $?

#1   一般性未知错误
#2   不合适的 shell 命令
#126 没有权限
#127 无效命令
#128 无效的退出参数
echo "------1"


var1=10
var2=30
var3=$[$var1 + $var2]
echo The answer is $var3
#exit 5
echo "------2"

var1=10
var2=30
var3=$[$var1 + $var2]
exit $var3
#echo "------3"


































