
#!/bin/bash
echo "Hello world ~"

name="千山暮雪"
echo $name
echo ${name}

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";

function sayHello {
    echo "Hello world"
    tmp=111
    local tmp2=222
}

echo "\"\""

echo "$name"
echo '$name'

echo $tmp
sayHello
echo $tmp
echo $tmp2

echo $PWD

abc="1"
if [[ $abc = "1" ]]; then
    echo "equal"
fi

if [ $abc = "1" ]; then
    echo "equal2"
fi

a=1
echo "--------数字判断--------"
[[ $a = 1 ]] && echo "Yes" || echo "No"
[[ $a != 1 ]] && echo "Yes" || echo "No"
[[ $a -eq 1 ]] && echo "Yes" || echo "No"
[[ $a -ne 1 ]] && echo "Yes" || echo "No"
[[ $a -gt 0 ]] && echo "Yes" || echo "No"
[[ $a -lt 2 ]] && echo "Yes" || echo "No"

[[ $a -ge 1 ]] && echo "Yes" || echo "No"
[[ $a -le 1 ]] && echo "Yes" || echo "No"

echo "--------字符串判断--------"
#字符串判断和数字一致，外加空判断、模式匹配
b=""

[[ -z $b ]] && echo "Yes1" || echo "No1"
[[ -n $b ]] && echo "Yes1" || echo "No1"

b="hello"
[[ $b == he* ]] && echo "Yes2" || echo "No2"
[[ $b == *o ]] && echo "Yes2" || echo "No2"

# 文件判断
echo "--------文件判断--------"
echo $PWD
file="/Users/l/Desktop/Shell/Demo/00.sh"

if [[ -e file ]]; then
    echo "file excit, path $file"
else
    echo "file not excit"
fi

[[ -e file ]] && echo "file excit" || echo "file not excit"


if [[ -f file ]]; then
    echo "file excit, path $file"
fi

file="/users/l/desktop/Shell/Demo"
if [[ -d file ]]; then
    echo "文件夹存在, $file"
fi


echo "--------逻辑判断--------"
[[ $b == h*lo && 1 == 2 ]] && echo "Yes" || echo "No"
[[ $b == h*lo || 1 == 2 ]] && echo "Yes" || echo "No"

echo "--------if 语句--------"
c=3
if [[ $c == 1 ]]; then
    echo "condition 1"
elif [[ $c == 2 ]]; then
    echo "condition 2"
else
    echo "condition else"
fi

if [[ $c == 3 ]]; then
    echo "c = 3"
fi

d=[1,2,3,4,5]
for f in $d; do
    echo $f
done






