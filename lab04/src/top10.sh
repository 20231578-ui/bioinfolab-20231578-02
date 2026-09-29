#!/usr/bin/bash

#파일에서 가장 많이 나온 단어 10개와 그 횟수를 결과 파일에 저장한다. 

INPUT=$1
OUTPUT=$2

cat $INPUT | tr -s " " "\n" | sort | uniq -c | sort -nr | head -10 > $OUTPUT
