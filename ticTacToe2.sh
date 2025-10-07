#!/bin/bash

# Check if dialog is installed
if ! command -v dialog &> /dev/null; then
    echo "This script requires 'dialog'. Install it using 'sudo apt install dialog'."
    exit 1
fi
# Check if figlet is installed
if ! command -v figlet &> /dev/null; then
    echo "This script requires 'figlet'. Install it using 'sudo apt install figlet'."
    exit 1
fi

clear
figlet -f standard "TIC-TAC-TOE"
echo -e "Press any key to start the game..."
read -n 1 -s
clear

# Intro
echo -e "\nWelcome to Tic Tac Toe!"
echo -e "Two players take turns placing X or O on a 3x3 board."
echo -e "First to get 3 in a row wins. If the board fills with no winner, it's a draw."
echo -e "\nPress any key to start..."
read -n 1 -s
clear

# Colors
GREEN='\Zb\Z2'
RED='\Z1'
BLUE='\Z4'
NC='\Zn'

# Handle Ctrl+C
trap "dialog --title 'Game Over' --msgbox 'Game exited! Thanks for Playing!' 6 30; clear; exit" SIGINT

# Draw board
print_board() {
    local board_text=""
    for i in {0..8}; do
        mark=${board[$i]}
        colored="$mark"

        if [[ "$mark" == "X" || "$mark" == "O" ]]; then
            if [[ " ${winning_cells[*]} " == *" $i "* ]]; then
                colored="$GREEN$mark$NC"
            elif [[ "$mark" == "X" ]]; then
                colored="$RED$mark$NC"
            elif [[ "$mark" == "O" ]]; then
                colored="$BLUE$mark$NC"
            fi
        fi

        board_text+=" $colored "
        if (( i % 3 != 2 )); then
            board_text+='|'
        else
            board_text+='\n'
            [[ $i -lt 6 ]] && board_text+='---+---+---\n'
        fi
    done
    dialog --title "Tic Tac Toe" --colors --msgbox "$board_text" 10 30
}

# Win check
check_win() {
    local p=$1
    local win_sets=( "0 1 2" "3 4 5" "6 7 8" "0 3 6" "1 4 7" "2 5 8" "0 4 8" "2 4 6" )
    for set in "${win_sets[@]}"; do
        read -r a b c <<< "$set"
        if [[ "${board[$a]}" == "$p" && "${board[$b]}" == "$p" && "${board[$c]}" == "$p" ]]; then
            winning_cells=($a $b $c)
            return 0
        fi
    done
    return 1
}

# Draw check
check_draw() {
    for cell in "${board[@]}"; do
        [[ "$cell" != "X" && "$cell" != "O" ]] && return 1
    done
    return 0
}

# Get player names
while true; do
    player1=$(dialog --inputbox "Enter name for Player X:" 8 40 3>&1 1>&2 2>&3)
    [[ -n "$player1" ]] && break
    dialog --msgbox "Name cannot be empty!" 6 30
done

while true; do
    player2=$(dialog --inputbox "Enter name for Player O:" 8 40 3>&1 1>&2 2>&3)
    [[ -n "$player2" ]] && break
    dialog --msgbox "Name cannot be empty!" 6 30
done

# Game loop
x_score=0
o_score=0

while true; do
    board=(1 2 3 4 5 6 7 8 9)
    winning_cells=()
    player="X"
    pname="$player1"

    while true; do
        print_board

        options=()
        for i in {1..9}; do
            if [[ "${board[$((i-1))]}" != "X" && "${board[$((i-1))]}" != "O" ]]; then
                options+=("$i" "")
            fi
        done

        move=$(dialog --title "$pname ($player)" \
            --menu "Choose a cell:" 15 40 10 "${options[@]}" 3>&1 1>&2 2>&3)

        [[ -z "$move" ]] && continue

        prev_board=("${board[@]}")

        board[$((move - 1))]=$player

        print_board

        dialog --title "Move Confirmation" \
            --yes-label "Submit" --no-label "Undo" \
            --yesno "You placed '$player' at cell $move.\n\nSubmit or Undo?" 10 40

        response=$?
        if [[ $response -ne 0 ]]; then
            # Undo selected
            board=("${prev_board[@]}")
            continue
        fi

        if check_win "$player"; then
            print_board
            dialog --msgbox "$pname ($player) wins!" 6 30
            if [[ "$player" == "X" ]]; then
                ((x_score++))
            else
                ((o_score++))
            fi
            break
        elif check_draw; then
            print_board
            dialog --msgbox "It's a draw!" 6 30
            break
        fi

        if [[ "$player" == "X" ]]; then
            player="O"
            pname="$player2"
        else
            player="X"
            pname="$player1"
        fi
    done

    dialog --msgbox "Score:\n$player1 (X): $x_score\n$player2 (O): $o_score" 8 40
    again=$(dialog --yesno "Play again?" 6 25 3>&1 1>&2 2>&3)
    [[ $? -ne 0 ]] && break
done
dialog --title "Thanks!" --msgbox "Thanks for playing Tic Tac Toe!\n\nSee you next time!" 7 40
clear
exit 0