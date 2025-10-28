# My Hyprland Dotfiles

This repository contains my personal configuration files (dotfiles) for a sleek, efficient, and visually consistent desktop experience on Arch Linux using the Hyprland window manager.

![Desktop Screenshot] <img width="2560" height="1600" alt="Desktop Screenshot-1" src="https://github.com/user-attachments/assets/db7228b8-d9b3-4e0a-a675-2d0a9f2705b8" />
---
![Desktop Screenshot 2] <img width="2560" height="1600" alt="Desktop Screenshot-2" src="https://github.com/user-attachments/assets/8ed2a29c-b9df-47cc-a488-2c1e76c36c90" />
---
![Desktop Screenshot 3] <img width="2560" height="1600" alt="Desktop Screenshot-3" src="https://github.com/user-attachments/assets/3e065b1d-f5d6-4f8d-9506-309268c71902" />


*A showcase of the desktop environment, featuring a clean layout and consistent theming.*

---

## ✨ Features

- **Minimalist & Clean:** Designed to be visually appealing without unnecessary clutter.
- **Efficient Workflow:** Keyboard-driven workflow with intuitive keybindings powered by Hyprland.
- **Dynamic Theming:** Uses `matugen` to generate a color palette from the current wallpaper for a cohesive look across applications.
- **Lightweight Components:** Built with a focus on performance, using lightweight applications like `kitty`, `rofi`, and `thunar`.
- **Ready-to-Use:** Includes configurations for essential system components like the status bar, notifications, and application launcher.

---

## 🛠️ Software Requirements

This setup relies on the following software. Please ensure they are installed on your system.

- **Window Manager / Desktop:** `hyprland`, `hypridle`, `hyprpaper`, `hyprpicker`, `hyprsunset` `swayimg`
- **System Utilities:** `kitty`, `nautilus`, `rofi`, `sherlock`, `wlogout`, `hyprlock`, `hypridle`, `swww`, `fastfetch`
- **Audio & Media:** `pipewire-alsa`, `pipewire-pulse`, `wireplumber`, `mpd`, `ncmpcpp`, `cava`, `pamixer`, `pavucontrol`, `easyeffects`, `rhythmbox`, `decibels`
- **Theming & Fonts:** `matugen-bin`, `kvantum`, `noto-fonts`, `noto-fonts-cjk`, `noto-fonts-emoji`, `ttf-bitstream-vera`, `ttf-dejavu`, `ttf-libration`, `ttf-meslo-nerd`, `ttf-opensans`, `papirus-icon-theme`, `tela-circle-icon-theme-dracula`
- **File Tools:** `unzip`, `unrar`, `zathura`
- **Additional Application:** `zen-browser`

---

## 🚀 Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/Bizahmet4965/AhmetDots.git
    cd AhmetDots
    ```

2.  **Backup your existing configuration:**
    Before proceeding, make sure to back up any existing configuration files in `~/.config/`.

3.  **Create symbolic links:**
    Link the configuration files from this repository to your `~/.config` directory.
    ```bash
    # Example for hyprland config
    ln -s -f ~/AhmetDots/Config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf

    # Example for kitty config
    ln -s -f ~/AhmetDots/Config/kitty/kitty.conf ~/.config/kitty/kitty.conf

    like this
    ```
    *It's often easier to write a small installation script to automate this process.*

---

## ⌨️ Keybindings

The workflow is centered around the `Win` (Super) key.

<details>
<summary><strong>Click to expand Keybindings</strong></summary>

### Basic Application and Window Management

| Shortcut | Action |
|---|---|
| `Win + Return` | Open terminal (`kitty`) |
| `Win + Q` | Close active window |
| `Win + E` | Open file manager (`nautilus`) |
| `Win + D` | Open application launcher (`sherlock`) |
| `Win + F` | Turkish dictionary (`rofi`) |
| `Win + Space` | Toggle floating mode |

### System and Session Management

| Shortcut | Action |
|---|---|
| `Win + L` | Lock | (`hyprlock`)
| `Win + M` | Show logout menu (`wlogout`) |
| `Win + Shift + L` | Lock the screen (`hyprlock`) |
| `Win + S` | Take a screenshot (fullscreen) |
| `Win + Shift + S` | Take a screenshot of a selected area | 

### Window Focus and Movement

| Shortcut | Action |
|---|---|
| `Win + Arrow Keys` | Focus window in the specified direction |

### Workspaces

| Shortcut | Action |
|---|---|
| `Win + [1-9]` | Switch to workspace 1-9 |
| `Win + Shift + [1-9]` | Move focus window to workspace 1-9 |
| `Win + Mouse Wheel` | Cycle through workspaces |

### Multimedia and Hardware Controls

| Shortcut | Action |
|---|---|
| `Media Keys` | Control media playback (`playerctl`) |
| `Volume Keys` | Adjust system volume (`wpctl`) |
| `Brightness Keys` | Adjust screen brightness (`hyprsunset`) |

</details>

---
Note! Replace the files in /home/ahmet (in the files (keybindings) in /home/XXXX/.config/hypr/modules)

The dots I took as examples are https://github.com/Abhra00/Matuprland and https://github.com/HyDE-Project/HyDE

Enjoy the setup!
