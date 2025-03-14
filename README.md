# CPU Load Alert Script

This script monitors CPU load on your Ubuntu system and sends a desktop notification when the CPU load exceeds 80%. It is designed to run automatically at startup, ensuring you are always aware of high CPU usage.

---

## Features

- Monitors CPU load in real-time.
- Sends a desktop notification when CPU load exceeds 80%.
- Runs automatically at startup.
- Easy to install and uninstall.

---

## Installation

### Prerequisites
- Ubuntu (or any Debian-based Linux distribution).
- `notify-send` (usually pre-installed on Ubuntu).

### Steps

#### **Option 1: Using `git`**
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/cpu-load-alert.git
   cd cpu-load-alert
   ```
2. Run the installation script:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

#### **Option 2: Using `wget`**
1. Download the repository as a ZIP file:
   ```bash
   wget https://github.com/your-username/cpu-load-alert/archive/main.zip
   ```
2. Unzip the file:
   ```bash
   unzip main.zip
   cd cpu-load-alert-main
   ```
3. Run the installation script:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

This will:

- Copy the script to `/usr/local/bin`.
- Create a `.desktop` file in `~/.config/autostart` to run the script at startup.
- Make the script executable.

---

## Uninstallation
To remove the script and stop it from running at startup, run:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

## One-Line Installation
For quick installation, run the following command:

```bash
bash <(curl -s https://raw.githubusercontent.com/your-username/cpu-load-alert/main/install.sh)
```

