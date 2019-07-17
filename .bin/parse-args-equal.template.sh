#!/bin/bash
# 解析=的传参变量

for i in "$@"
do
case $i in
	-d=*|--dir=*)
	EXAMPLE="${i#*=}"
	shift
	;;
esac
done
echo "EXAMPLE = ${EXAMPLE}"
