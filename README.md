# Bulker 🚀

**Bulker** is a lightweight, minimal productivity utility designed for Linux Mint (Cinnamon). It allows you to launch multiple applications simultaneously using a clean, native graphical checklist interface.

Stop clicking through menus or opening multiple terminals to set up your workspace. With Bulker, you can launch your entire workflow with a single click.

![License](https://img.shields.io/badge/license-apache-blue.svg)
![Platform](https://img.shields.io/badge/platform-Linux%20Mint%20%7C%20Ubuntu-green.svg)

## Features

- **Native Look & Feel:** Utilizes `Zenity` to integrate seamlessly with the Cinnamon desktop environment.
- **Space-Safe Parsing:** Handles application names with spaces or complex arguments flawlessly without breaking the UI.
- **Background Detachment:** Launches applications completely independently; closing the menu or terminal won't kill your opened apps.
- **Fully Customizable:** Easily add, remove, or modify your application suites by editing a simple Bash array.

## Preview

*A sleek checklist dialog appears showing your predefined applications. Simply check the boxes of the apps you want to open and click OK.*

## Quick Start

### 1. Clone & Setup
Clone the repository and give execution permissions to the script:

```bash
git clone [https://github.com/CertainlyNotSen/Bulker.git](https://github.com/YOUR_USERNAME/Bulker.git)
cd Bulker
chmod +x bulker.sh
