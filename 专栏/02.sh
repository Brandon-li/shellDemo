
#!/bin/bash

echo "--------错误处理--------"

##  set -u 可以在遇到未定义变量时抛出错误，而不是忽略
set -u
#echo $bar

##  set -e 遇到错误直接退出脚本
#set -e
#aaaaa

#set -e
set -o pipefail # set -e 配合此指令使用 管道中任何一个指令出错，程序都会退出

bs | ls
echo 'reach hear'


echo "--------调用执行--------"
## 显示执行的指令
set -x
## 显示当前执行指令所在行，函数名
export PS4='+{$LINENO:${FUNCNAME[0]}} '
ls


echo "--------钩子--------"

## 表示遇到错误指令或未定义的变量时立即退出
#set -euo pipefail

##  需要调试的时候改成如下
set -euxo pipefail

function bs_exit() {
    echo "exit" && exit $1
}


function finish {
    err=$?
    if [[ $err == 1 ]]; then
        echo '1'
    fi
}

trap finish EXIT













