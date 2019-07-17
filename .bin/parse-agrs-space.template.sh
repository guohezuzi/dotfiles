#!/bin/bash
# 解析空格的传参变量

POSITIONAL=()
while [[ $# -gt 0 ]]
do
	key="$1"
	case $key in
		-e|--example)
			EXAMPLE="$2"
			shift
			shift
			;;
		*)
			POSITIONAL+=("$1")
			shift
			;;
	esac
done

set -- "${POSITIONAL[@]}"

echo "EXAMPLE = ${EXAMPLE}"
