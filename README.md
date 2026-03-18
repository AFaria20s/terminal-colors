# terminal-colors

![GitHub last commit](https://img.shields.io/github/last-commit/AFaria20s/terminal-colors)
![GitHub stars](https://img.shields.io/github/stars/AFaria20s/terminal-colors?style=flat)
![License](https://img.shields.io/github/license/AFaria20s/terminal-colors)
![Shell](https://img.shields.io/badge/shell-bash%20%2F%20zsh-89e051)

A quick reference for ANSI colors and text formatting in the terminal.

---

## Setup

```bash
git clone https://github.com/your-username/terminal-colors.git
cd terminal-colors
bash setup.sh
source ~/.zshrc  # or ~/.bashrc
```

Then just type:

```bash
colors
```

## Manual usage

If you prefer to set it up yourself:

```bash
cp colors.sh ~/.colors.sh
echo "alias colors='bash ~/.colors.sh'" >> ~/.zshrc
source ~/.zshrc
```

---

## What it shows

- Text formatting — bold, dim, italic, underline, blink, reverse, strikethrough
- Foreground colors — normal and bright variants
- Background colors — normal and bright variants

Each entry is rendered with its own escape code, so you see exactly what you get.

---

## 256 colors and truecolor

Not in the script since there are hundreds of values, but the syntax is simple:

```bash
echo -e "\033[38;5;208m  fg 256  \033[0m"   # 256 fg (0–255)
echo -e "\033[48;5;208m  bg 256  \033[0m"   # 256 bg (0–255)

echo -e "\033[38;2;255;100;0m  fg rgb  \033[0m"   # truecolor fg
echo -e "\033[48;2;255;100;0m  bg rgb  \033[0m"   # truecolor bg
```

---

## License

MIT
