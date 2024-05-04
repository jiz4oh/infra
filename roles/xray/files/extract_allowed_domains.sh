#!/bin/bash

# 保存文本内容到变量
text=$2

# 根据命令行参数选择提取的部分
if [ "$1" = "with-sni" ]; then
  # 使用SNI提取
  allowed_domains=$(echo "$text" | sed -n '/Pinging with SNI/,/Allowed domains:/p' | grep -oP '(?<=Allowed domains: \[).*?(?=\])')
elif [ "$1" = "without-sni" ]; then
  # 不使用SNI提取
  allowed_domains=$(echo "$text" | sed -n '/Pinging without SNI/,/Allowed domains:/p' | grep -oP '(?<=Allowed domains: \[).*?(?=\])')
else
  echo "无效的参数：'$1'，请输入 'with-sni' 或 'without-sni'"
  exit 1
fi

# 将提取的"Allowed domains"以每行输出
echo "$allowed_domains" | sed 's/\*.*//g' | tr ' ' '\n'



