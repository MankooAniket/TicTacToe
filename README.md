# TicTacToe (Terminal • Bash • Dockerized)

A fully interactive **two-player Tic-Tac-Toe game** written in **Bash** for the Linux terminal.  
It features colorful dialogs, player name input, automatic win/draw detection, scoring, replay options — and is now **fully containerized** using Docker / Podman.

A fun, nostalgic CLI project that showcases **shell scripting, dependency management, and containerization**.

---

## Terminal Tic-Tac-Toe Game

This is a classic **two-player Tic-Tac-Toe** game designed for terminal play on Linux systems.  
It uses:

- `dialog` for interactive, colorized UI windows  
- `figlet` for styled ASCII banners  

The result is an engaging terminal experience with smooth user interaction.

---

## Features

- Two-player mode with custom player name prompts
- Interactive, colorized board using `dialog`
- ASCII art banners using `figlet`
- Automatic win and draw detection
- Score tracking with replay option
- Graceful exit and interruption handling
- Dependency checks for missing tools
- Fully Dockerized (works with Docker & Podman)

---

## Tech Stack

- **Language:** Bash (Shell Script)
- **UI Tools:** dialog, figlet
- **Containerization:** Docker (OCI compatible with Podman)
- **Platform:** Linux (tested on Fedora & Ubuntu)

---

## Run Using Docker (Recommended)

No local dependencies needed.

### Using Docker
```bash
docker run -it tictactoe
```

### Using Podman
```bash
podman run -it tictactoe
```

---

## Run Locally (Without Docker)

### Dependencies
- bash (usually pre-installed)
- dialog
- figlet

### Install on Fedora / RHEL / RPM-based
```bash
sudo dnf install dialog figlet
```

### Install on Ubuntu / Debian
```bash
sudo apt install dialog figlet
```

---

## Usage

1. Clone the repository:
```bash
git clone https://github.com/MankooAniket/TicTacToe.git
cd TicTacToe
```

2. Run the script:
```bash
bash ticTacToe2.sh
```

3. Follow the on-screen prompts to:
- Enter player names
- Take turns
- View scores and replay games

---

##  Build the Docker Image Yourself
```bash
git clone https://github.com/MankooAniket/TicTacToe.git
cd TicTacToe
docker build -t tictactoe .
docker run -it tictactoe
```

> The same commands work with **Podman** on Fedora.

---

## Game Rules

- The game is played on a 3×3 grid
- Players alternate placing X and O
- The first player to align three symbols:
    - Horizontally
    - Vertically
    - Diagonally
wins

- If all cells are filled without a winner → Draw

---

## Why This Project?

- Demonstrates practical Bash scripting
- Shows interactive CLI UI design
- Handles dependencies cleanly
- Demonstrates Docker & Podman containerization
- Great showcase project for:
    - Linux
    - DevOps
    - Backend / System roles

---

## Future Improvements

- Single-player mode (AI opponent)
- Configurable board size
- Sound effects (terminal bell)
- CI pipeline for automatic Docker builds

---

## Author

Aniket Mankoo<br>
GitHub: https://github.com/MankooAniket<br>
LinkedIn: https://linkedin.com/in/mankooaniket

If you enjoyed this project, consider starring the repository!

