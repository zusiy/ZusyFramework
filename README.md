<p align="center">
  <img src="https://zusyframework.netlify.app/ZusyFramework.png" alt="ZusyFramework Logo" width="250"/>
</p>

<h1 align="center">ZusyFramework</h1>

<p align="center">
  <img src="https://img.shields.io/badge/language-Python-blue" alt="Python"/>
  <img src="https://img.shields.io/badge/platform-Windows-red" alt="Windows"/>
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License"/>
  <img src="https://img.shields.io/badge/type-Pentesting%20Framework-orange" alt="Pentesting"/>
</p>

<p align="center">
  <img src="https://zusyframework.netlify.app/Preview.png" alt="ZusyFramework Preview" width="500"/>
</p>

## About

ZusyFramework is a powerful penetration testing and post-exploitation framework designed for ethical hackers and security researchers. It provides a wide range of modules for remote access, reverse shell generation, privilege escalation, credential harvesting, and system reconnaissance.

Once deployed on a target Windows system, ZusyFramework enables the operator to gain persistent terminal access, capture webcam footage, retrieve sensitive files and system information, and execute arbitrary commands remotely. The framework is modular, extensible, and built for real-world red team operations.

### Features

- Reverse shell & bind shell generation for Windows
- Persistent backdoor and remote terminal access
- Webcam capture and system information harvesting
- Modular payload architecture with listener support
- Encrypted C2 communication and stealth execution

## Installation

Run the following commands in order to install ZusyFramework.

**Step 1 — Clone the repository**

    git clone https://github.com/zusiy/ZusyFramework.git
    cd ZusyFramework

**Step 2 — Install dependencies**

    pip3 install -r requirements.txt --break-system-packages

**Step 3 — Run**

    python3 ZusyFramework

## Help

Type `help` inside the ZusyFramework terminal to list all available modules, payloads, and commands. The framework uses a modular structure, so each module has its own set of configurable options.

    ╔══(zusy@fsociety)──(no module)
    ╚═▶ help

<p align="center">
  <img src="https://zusyframework.netlify.app/Help.png" alt="ZusyFramework Help" width="450"/>
</p>

Core commands include `use` (select a module), `set` (configure options), `run` / `exploit` (execute), `sessions` (manage active connections), and `chat` (team communication).

## BatDropper Module

BatDropper is a batch dropper module for targeting Windows systems. Use this module to generate a `.bat` file that connects back to your listener when executed on the target machine.

    ╔══(zusy@fsociety)──(no module)
    ╚═▶ use exploit/windows/batdropper

<p align="center">
  <img src="https://zusyframework.netlify.app/Bat.png" alt="BatDropper Module" width="450"/>
</p>

Once the module is selected, configure the required options then generate the `.bat` dropper file. After the file is ready, use `exploit` or `run` to activate the listener. When the target user executes the `.bat` file, a reverse shell connection is established and full terminal control is handed over to you. BatDropper enables persistent sessions on the target system with remote command execution and file transfer capabilities.

## Chat

ZusyFramework lets you create encrypted terminal-based chat rooms to communicate with other hackers in your team. Share recon notes, command outputs, and coordinate in real time through a secure channel.

    ╔══(zusy@fsociety)──(no module)
    ╚═▶ chat create

| Chat | Chat Room |
|:---:|:---:|
| <img src="https://zusyframework.netlify.app/Chat.png" alt="Chat" width="400"/> | <img src="https://zusyframework.netlify.app/ChatRoom.png" alt="Chat Room" width="400"/> |

Two modes: You can expose your chat room publicly via **bore.pub** so teammates outside your network can join, or create a local LAN room for private team communication. All messages are sent through the terminal and leave no traces behind.

## Disclaimer

This tool is intended for educational purposes and authorized security testing only. Any illegal use is strictly prohibited. The author is not responsible for any misuse.

---

© 2026 ZusyFramework — [GitHub Repo](https://github.com/zusiy/ZusyFramework)
