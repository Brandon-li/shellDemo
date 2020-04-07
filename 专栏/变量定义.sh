

#   等号两端不能有空格
num1=123
echo $num1

#   字符串双引号可以使用变量，单引号不能
str1="123 $num1"
echo $str1

#   字符串中可以使用转义字符 \t tab \n 换行
str2="abc\tdef\ng"
echo $str2

#   数字计算
a=2
b=3
c=$(($a + $b))
d=$((a + b))
echo $c
echo $d

#   变量比较

#   数字比较 == ! || &&
num=123
[[ $num = 123 ]] && echo "Yes" || echo "NO"
((num == 123)) && echo "Y" || echo "N"

#   字符串比较
str3="abc"
[[ $str3 == "abc" ]] && echo "Y" || echo "N"
[[ $str3 == "ab" || $str3 = "abc" ]] && echo "Y" || echo "N"



echo "--------语句--------"

#   条件语句
if [[ $str3 == "ab" || $str3 == "abc" ]]; then
    echo "Y"
else
    echo "N"
fi

#   循环语句







