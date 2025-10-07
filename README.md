# TicTacToe
A fully interactive two-player Tic-Tac-Toe game in Bash for the Linux terminal. Features colorful dialogs, player name input, automatic win/draw detection, scoring, and replay options. A fun, nostalgic game showcasing practical shell scripting, dependency management, and smooth user interaction.

# Terminal Tic-Tac-Toe Game
A classic two-player Tic-Tac-Toe game written in Bash script, designed for play in the Linux terminal. This project uses `dialog` for interactive UI elements and `figlet` for styled banners, providing an engaging and nostalgic experience!

## Features

- Two-player mode with custom player name prompts
- Interactive, colorized board using dialog windows
- Automatic win and draw detection
- Score tracking and replay option
- Handles graceful exits and interruptions
- Dependency checks for missing tools

## Dependencies

- `bash` (typically pre-installed)
- `dialog` (install with `sudo apt install dialog`)
- `figlet` (install with `sudo apt install figlet`)

## Usage

1. Clone or download the script to your local Linux machine:
git clone https://github.com/MankooAniket/TicTacToe/

2. Install required packages if missing:
sudo apt install dialog figlet


3. Run the script in your terminal:
bash ticTacToe2.sh


4. Follow the on-screen prompts to enter player names and take turns. The game provides instructions and tracks scores automatically.

## Game Rules

- The game is played on a 3x3 grid.
- Players take turns to place their symbol (X or O) in empty cells.
- The first to get three of their symbols in a row (vertically, horizontally, or diagonally) wins.
- If all cells are filled and there is no winner, the game ends in a draw.

Enjoy a nostalgic round of Tic-Tac-Toe and explore Bash scripting with this interactive project!

