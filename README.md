![Bash](https://img.shields.io/badge/Bash-Scripting-green)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)
![CI](https://github.com/mankooaniket/TicTacToe/actions/workflows/docker.yml/badge.svg)
# TicTacToe CLI (Bash • Dockerized)

A fully interactive **two-player Tic-Tac-Toe game** built using **Bash scripting** for the Linux terminal.  
It features a colorful CLI interface, smooth gameplay, and is fully containerized using **Docker / Podman**.

This project showcases **shell scripting, CLI interaction design, dependency handling, and containerization**.

---

## Demo

> Interactive terminal gameplay (Dockerized execution)

[![asciicast](https://asciinema.org/a/861898.svg)](https://asciinema.org/a/861898)

---

## Features

- Two-player mode with custom player name prompts
- Interactive, colorized board using `dialog`
- ASCII art banners using `figlet`
- Automatic win and draw detection
- Score tracking with replay option
- Graceful exit and interruption handling
- Dependency checks for missing tools
- Fully containerized with Docker (OCI compatible with Podman)
- Automated Docker image build & deployment using GitHub Actions (CI/CD)
---

## Tech Stack

- **Language:** Bash (Shell Script)
- **UI Tools:** dialog, figlet
- **Containerization:** Docker (OCI compatible with Podman)
- **Platform:** Linux (tested on Fedora & Ubuntu)

---

## Key Concepts Demonstrated

- Shell scripting & process flow control  
- CLI-based user interaction design  
- Dependency handling in Linux environments  
- Containerization & reproducible environments using Docker
  
---

## Run Using Docker (Recommended)

> Image available on Docker Hub: `mankooaniket/tictactoe:v1.0.0`
> Runs in an isolated container with all dependencies pre-configured

### Using Docker
```bash
docker run -it mankooaniket/tictactoe:v1.0.0
```

### Using Podman
```bash
podman run -it mankooaniket/tictactoe:v1.0.0
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

## Project Structure

```bash
.
├── ticTacToe.sh
├── Dockerfile
├── LICENSE
└── README.md
```

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

## License

This project is licensed under the MIT License.

---

## Author

**Aniket Mankoo**<br>
GitHub: https://github.com/MankooAniket<br>
LinkedIn: https://linkedin.com/in/mankooaniket

If you enjoyed this project, consider starring the repository!

