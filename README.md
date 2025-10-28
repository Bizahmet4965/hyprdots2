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
# 📦 Hyprland Desktop Environment Package List

This is a comprehensive list of the packages used in the current configuration, categorized by their primary function.

## 🖥️ Window Management & Desktop

| Component | Package Name | Description |
| :--- | :--- | :--- |
| **Wayland Compositor** | `hyprland` | The dynamic tiling Wayland window manager. |
| **Idle Management** | `hypridle` | Utility to manage the system's idle state. |
| **Wallpaper** | `hyprpaper` | Simple Wayland wallpaper utility. |
| **Color Picker** | `hyprpicker` | A color-picking tool for Wayland. |
| **Sunset Effect** | `hyprsunset` | (Assumed utility for color temperature/sunset effects). |
| **Image Viewer** | `swayimg` | Minimal and fast image viewer for Wayland. |

## 🛠️ System Utilities

| Component | Package Name | Description |
| :--- | :--- | :--- |
| **Terminal Emulator** | `kitty` | Fast, GPU-accelerated terminal emulator. |
| **File Manager** | `nautilus` | GNOME's feature-rich file manager. |
| **Application Launcher** | `rofi` | Highly customizable window switcher and launcher. |
| **Screen Capture** | `sherlock` | (Assumed screen capture/recording utility). |
| **Logout Menu** | `wlogout` | Graphical logout menu for Wayland. |
| **Screen Locker** | `hyprlock` | Screen locking utility. |
| **Wallpaper** | `swww` | A modern Wayland wallpaper utility (Alternative to `hyprpaper`). |
| **System Info** | `fastfetch` | Fast and highly customizable system information tool. |

## 🎵 Audio & Media

| Component | Package Name | Description |
| :--- | :--- | :--- |
| **PipeWire Compatibility** | `pipewire-alsa` | ALSA compatibility layer for PipeWire. |
| **PipeWire Compatibility** | `pipewire-pulse` | PulseAudio compatibility layer for PipeWire. |
| **Session Manager** | `wireplumber` | PipeWire session and policy manager. |
| **Music Daemon** | `mpd` | Music Player Daemon (Backend). |
| **MPD Client (CLI)** | `ncmpcpp` | CLI client for MPD. |
| **Visualizer** | `cava` | Console-based audio visualizer. |
| **Volume Control (CLI)** | `pamixer` | Command-line PulseAudio mixer. |
| **Volume Control (GUI)** | `pavucontrol` | Graphical volume control (for PipeWire/PulseAudio). |
| **Audio Effects** | `easyeffects` | Audio effects and equalizer. |
| **Music Player** | `rhythmbox` | GNOME music player. |
| **Podcast Player** | `decibels` | GNOME podcast player. |

## 🎨 Theming & Fonts

| Component | Package Name | Description |
| :--- | :--- | :--- |
| **Theme Generator** | `matugen-bin` | Tool to generate material themes. |
| **Qt Theming** | `kvantum` | Qt theming engine. |
| **Main Fonts** | `noto-fonts` | Noto Font family. |
| **CJK Fonts** | `noto-fonts-cjk` | Noto fonts for Chinese, Japanese, and Korean. |
| **Emoji Fonts** | `noto-fonts-emoji` | Noto Emoji fonts. |
| **Classic Fonts** | `ttf-bitstream-vera`, `ttf-dejavu`, `ttf-libration`, `ttf-opensans` | Common, high-quality font families. |
| **Nerd Fonts** | `ttf-meslo-nerd` | Meslo font with added icons/glyphs (Nerd Font). |
| **Icon Theme** | `papirus-icon-theme` | Popular flat icon theme. |
| **Icon Theme** | `tela-circle-icon-theme-dracula` | Dracula themed circle icon set. |

## 🗃️ File Tools

| Component | Package Name | Description |
| :--- | :--- | :--- |
| **Extraction** | `unzip`, `unrar` | Utilities for extracting ZIP and RAR archives. |
| **Document Viewer** | `zathura` | Minimal, keyboard-driven document viewer. |

## ➕ Additional Application

| Component | Package Name | Description |
| :--- | :--- | :--- |
| **Web Browser** | `zen-browser` | (Specific/Additional web browser application). |

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
