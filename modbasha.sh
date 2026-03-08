#!/data/data/com.termux/files/usr/bin/bash

clear

echo -e "\033[1;32m"
echo "███╗   ███╗ ██████╗ ██████╗     ██████╗  █████╗ ███████╗██╗  ██╗ █████╗"
echo "████╗ ████║██╔═══██╗██╔══██╗    ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗"
echo "██╔████╔██║██║   ██║██║  ██║    ██████╔╝███████║███████╗███████║███████║"
echo "██║╚██╔╝██║██║   ██║██║  ██║    ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██║"
echo "██║ ╚═╝ ██║╚██████╔╝██████╔╝    ██████╔╝██║  ██║███████║██║  ██║██║  ██║"
echo "╚═╝     ╚═╝ ╚═════╝ ╚═════╝     ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝"
echo -e "\033[0m"

echo "-----------------------------------------"
echo " VIP BYPASS | TEAM RIP"
echo " MOD BASHA TOOL"
echo " Telegram : @MODBASHA"
echo " DEV: @BASHARIP"
echo "-----------------------------------------"
echo ""

sleep 2

read -p "Enter .so file: " LIB

if [ ! -f "$LIB" ]; then
echo "File not found"
exit
fi

DIR=$(dirname "$LIB")
REPORT="$DIR/BYPASSRIP.txt"

clear
echo "[ VIP BYPASS | TEAM RIP ]"
echo "[ DEV @BASHARIP ]"
sleep 1

# ===== مشهد الرموز =====

scene() {

SYMBOLS=("│" "├" "└" "─" "┬" "┤" "┼")

ROWS=$(tput lines)
COLS=$(tput cols)

MID_ROW=$((ROWS / 2))
MID_COL=$((COLS / 2 - 5))

while true
do
clear

for ((r=0; r<ROWS; r++))
do

LINE=""

for ((c=0; c<COLS; c++))
do
RAND=${SYMBOLS[$RANDOM % ${#SYMBOLS[@]}]}
LINE="$LINE$RAND"
done

if [ $r -eq $MID_ROW ]; then
LINE=$(echo "$LINE" | sed "s/.\{$MID_COL\}/MOD BASHA/")
fi

echo "$LINE"

done

sleep 0.08

done

}

scene &

# ===== إنشاء التقرير =====

echo "===================================" > "$REPORT"
echo "            VIP BYPASS" >> "$REPORT"
echo "             TEAM RIP" >> "$REPORT"
echo "===================================" >> "$REPORT"
echo "MOD BASHA TOOL" >> "$REPORT"
echo "Telegram : @MODBASHA" >> "$REPORT"
echo "DEV: @BASHARIP" >> "$REPORT"
echo "===================================" >> "$REPORT"

echo "" >> "$REPORT"
echo "=== OFFSETS ===" >> "$REPORT"

objdump -d "$LIB" | grep ":" | awk '{print $1}' | sed 's/://g' | while read addr
do

if [[ "$addr" =~ ^[0-9a-fA-F]+$ ]]; then

off=$(printf "%06X" $((0x$addr & 0xFFFFFF)))

if [ "$off" != "000000" ]; then
echo "0x$off" >> "$REPORT"
fi

fi

done

echo "" >> "$REPORT"
echo "=== STRINGS SAMPLE ===" >> "$REPORT"
strings "$LIB" | head -30 >> "$REPORT"

echo ""
echo "[✔] Analysis completed"
echo "Report saved:"
echo "$REPORT"