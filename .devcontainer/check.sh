#!/usr/bin/env bash
# Codespace가 처음 만들어질 때 한 번 실행된다.
# 도구가 제대로 설치되어 있는지 확인하여 화면에 보여 준다.

echo ""
echo "=============================================="
echo "  생물정보학실험 실습 환경 확인"
echo "=============================================="

check() {
    if command -v "$1" > /dev/null 2>&1; then
        printf "  [ OK ] %-12s %s\n" "$1" "$($2 2>&1 | head -1)"
    else
        printf "  [ 없음 ] %-12s\n" "$1"
    fi
}

check python3 "python3 --version"
check seqkit   "seqkit version"
check fastqc   "fastqc --version"
check fastp    "fastp --version"
check blastn   "blastn -version"
check mafft    "mafft --version"
check iqtree   "iqtree --version"

echo ""
echo "  아래 두 가지는 처음 실행할 때 시간이 걸립니다."
echo "  10주차와 11주차에 사용합니다."
command -v shovill > /dev/null && echo "  [ OK ] shovill" || echo "  [ 없음 ] shovill"
command -v prokka  > /dev/null && echo "  [ OK ] prokka"  || echo "  [ 없음 ] prokka"

echo ""
echo "  작업 폴더: $(pwd)"
echo "  실습이 끝나면 왼쪽 아래에서 Codespace를 정지하세요."
echo "=============================================="
echo ""
