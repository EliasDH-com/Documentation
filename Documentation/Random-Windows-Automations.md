![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Random Windows automations.🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Posts](#✨posts)
    1. [👉Post 1: Startup full screen web page](#👉post-1-startup-full-screen-web-page)
    2. [👉Post 2: Disable Windows Defender](#👉post-2-disable-windows-defender)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This is a collection of random nodes for Windows automations that I have found useful. I have created this file to keep track of all the random notes that I have made. I hope that you will find this file useful as well. If you have any questions or suggestions, please let me know.

## ✨Posts

### 👉Post 1: Startup full screen web page

The first thing we need to do is create a batch file. This batch file will open the web page in full screen mode. To do this, open a text editor and paste the following code:
```batch
@echo off
start chrome --start-fullscreen "https://levelup.eliasdh.com/assets/pages/entrance-computer-display.php"
```
Save the file as `startup.bat` and place it in the startup folder. To do this, press `Windows + R` and type `shell:startup`. This will open the startup folder. Now copy the `startup.bat` file to this folder. Now the web page will open in full screen mode when you start your computer.
> **Note:** You can change the web page by changing the URL in the batch file.

### 👉Post 2: Disable Windows Defender

To disable Windows Defender, open the registry editor by pressing `Windows + R` and typing `regedit`. Now navigate to the following key:
```text
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender
```
If the `Windows Defender` key does not exist, create it by right-clicking on the `Microsoft` key and selecting `New` > `Key`. Now right-click on the `Windows Defender` key and select `New` > `DWORD (32-bit) Value`. Name the new value `DisableAntiSpyware`. Now double-click on the new value and set the value data to `1`. Now restart your computer and Windows Defender will be disabled.
> **Note:** To enable Windows Defender again, set the value data to `0`.

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com