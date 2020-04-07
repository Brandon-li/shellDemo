
#!/bin/bash

echo "--------管道--------"

ls

ls | grep "a"

function before {
    echo "output"
}

function after {
    read in
    echo "Read form pipiline:" ${in}
}

before | after

echo "--------重定向--------"
ls
# 00.sh 01.sh >success 2>$1

echo "--------函数返回值--------"

function foo {
    echo "output"
    return 1
}

a=`foo`
echo $? ### $? 读取函数返回值
echo $a ###  echo $a 读取 echo 内容

### 在 if 语句中，除了可以进行普通的判断外，还可以直接根据命令的执行结果进行判断。此时读取的依然是 return 的结果。
### 正常执行的命令返回值是 0，对应到 if 语句中则是 true 分支
if test ;then
    echo "1"
else
    echo "2"
fi

if `ls | grep -q '01.sh'`; then
    echo '01.sh excit'
else
    echo '01.sh NOT excit'
fi














