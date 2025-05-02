# deb-click-installer

**deb-click-installer** allows users to double-click on any `.deb` file in a file manager and install it via terminal with sudo permissions — without needing to type a password (if the user is in the `sudo` group).

It is ideal for live systems or custom Debian installations where ease of use is critical.

---

## ✨ Features

- Allows `.deb` packages to be installed via double-click
- Opens a terminal to show installation progress
- Automatically requests `sudo` (with NOPASSWD for `/usr/local/bin/install-deb.sh`)
- Keeps the terminal open after installation to view the result
- Automatically associates `.deb` files with this installer
- Supports XFCE by default, other terminals configurable

---

## 🖥 Requirements

- Debian or Debian-based system
- A graphical terminal such as:
  - `xfce4-terminal` (default)
  - `gnome-terminal`, `konsole`, or `xterm` (edit `.desktop` file if needed)
- `xdg-utils` (for MIME type registration)

---

## 📦 How to Build the .deb Package

After extracting the source directory (`deb-click-installer`):

```bash
dpkg-deb --build deb-click-installer
