![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Basic Answer File Tutorial🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [🧰Requirements](#🧰requirements)
4. [📝Important: How to create unattended Windows 10 installation media](#📝important-how-to-create-unattended-windows-10-installation-media)
5. [✨Steps](#✨steps)
    1. [👉Step 1: How to install Windows System Image Manager](#👉step-1-how-to-install-windows-system-image-manager)
    2. [👉Step 2: How to create Windows 10 answer file project](#👉step-2-how-to-create-windows-10-answer-file-project)
    3. [👉Step 3: Import Windows 10 image files](#👉step-3-import-windows-10-image-files)
    4. [👉Step 4: Convert install.esd to install.wim](#👉step-4-convert-installesd-to-installwim)
    5. [👉Step 5: Setting up an answer file environment](#👉step-5-setting-up-an-answer-file-environment)
    6. [👉Step 6: How to create Windows 10 answer file](#👉step-6-how-to-create-windows-10-answer-file)
        1. [👉Step 6.1: Configure language and region settings](#👉step-6.1-configure-language-and-region-settings)
        2. [👉Step 6.2: Configure installation settings](#👉step-6.2-configure-installation-settings)
        3. [👉Step 6.3: BIOS only: Creating and modifying partitions](#👉step-6.3-bios-only-creating-and-modifying-partitions)
        4. [👉Step 6.4: UEFI only: Creating and modifying partitions](#👉step-6.4-uefi-only-creating-and-modifying-partitions)
        5. [👉Step 6.5: Configure Windows settings](#👉step-6.5-configure-windows-settings)
        6. [👉Step 6.6: Configure user account settings](#👉step-6.6-configure-user-account-settings)
        7. [👉Step 6.7: Configure OOBE settings](#👉step-6.7-configure-oobe-settings)
        8. [👉Step 6.8: Save the answer file](#👉step-6.8-save-the-answer-file)
    7. [👉Step 7: Create Windows 10 installation media](#👉step-7-create-windows-10-installation-media)
    8. [👉Step 8: Test the unattended installation](#👉step-8-test-the-unattended-installation)
6. [🔗Links](#🔗links)

---

## 🖖Introduction

When you start a new installation of Windows 10, you must go through the Windows Setup, which is the experience that helps you to configure various settings, including language preferences, product key, and partition layout. After the installation, you also have to go through the out-of-box experience `(OOBE)`, which you need to complete to configure settings like keyboard layout, account, and privacy settings.

Although the process is relatively easy for most people, you still have to spend the time controlling the installation and answering questions, which can take up a lot of time, especially if you need to complete multiple installations in your workplace.

If you want to automate the installation process (and save time in the process), you can create an answer file with instructions to complete every on-screen prompt, which you can integrate onto a bootable media. Then the Windows Setup can read to install Windows 10 automatically. 

In this Windows 10 guide, I walk you through the steps to create an `autounattend.xml` answer file containing all the necessary settings to perform a basic unattended installation of the OS.

## 🧰Requirements

This guide has quite a few steps, and you'll need a few things to complete the project successfully: 

- Windows Assessment and Development Kit (ADK) for Windows 10 -> [Download](https://go.microsoft.com/fwlink/?linkid=2120843).
- Windows 10 installation files (windows 10 .ico) -> [Download](https://www.microsoft.com/en-us/software-download/windows10ISO).
- Windows 10 account with administrator privileges.
- Spare computer to test the installation (VM):
    - Software:
        - VirtualBox -> [Download](https://www.virtualbox.org/wiki/Downloads).
        - Vimware -> [Download](https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html).
        - Hyper-V -> [Download](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v).
    - Hardware:
        - 8GB RAM.
        - 20GB Storage.
        - 2 CPU Cores.
        - 64-bit host operating system.

## 📝Important: How to create unattended Windows 10 installation media

On Windows 10, you can use many ways to create and set up an answer file to automate the installation process. This guide outlines the instructions to configure a `.xml` file to perform an unattended installation of Windows 10 Pro 64-bit on a computer with a single drive using Unified Extensible Firmware Interface `(UEFI)` or Basic Input-Output System `(BIOS)`. 

After setting up the answer file, the process will erase everything on the drive, create and configure the necessary partitions, and install a fresh copy of Windows 10 with the most basic settings. 

> Warning: This is a friendly reminder that the installation process will completely erase the hard drive of your computer. If you have anything important on this device, it's recommended to make a full backup of your PC before proceeding.


## ✨Steps

### 👉Step 1: How to install Windows System Image Manager

Anyone can write an answer file manually. Microsoft offers the Windows System Image Manager `(SIM)` console available through the Windows Assessment and Deployment Kit `(ADK)` to make it easier to create the file to install Windows 10 unattended. 

- Download the Windows ADK installer for Windows 10 version 2004.
- Double-click the adksetup.exe file to begin the installation. 
- Select the `Install the Windows Assessment and Deployment Kit - Windows 10 to this computer` option.

    ![Basic-Answer-File-Tutorial-1](/Images/Basic-Answer-File-Tutorial-1.png)

- Click the `Next` button.
- Select your privacy setting.
- Click the `Next` button.
- Click the `Accept` button to agree to the license terms.
- Clear all preselected choices.
- Check only the `Deployment Tools` package to install the Windows System Image Manager components.

    ![Basic-Answer-File-Tutorial-2](/Images/Basic-Answer-File-Tutorial-2.png)

- Click the `Install` button.
- Click the `Close` button.

Once you complete the steps, you can use the console to create a `.xml` file with the answer to all the questions to automatically install Windows 10.

After the file is created, you can adjust the settings and reuse it for other installations, instead of having to use the Windows System Image Manager tool.

### 👉Step 2: How to create Windows 10 answer file project
After installing the Windows System Image Manager console, you need to import the OS installation files onto your device, and set up the environment to create an answer file.

### 👉Step 3: Import Windows 10 image files

- Open File Explorer.
- Navigate to the Windows 10 ISO file location.
    > Quick tip: Alternatively, you can also connect a USB flash drive with the installation files(bootable Windows 10 installer).

- Right-click the ISO file and select the Mount option.

    ![Basic-Answer-File-Tutorial-3](/Images/Basic-Answer-File-Tutorial-3.png)

- Open the drive with the Windows 10 installation files. 
- Click the Select all button from the `Home` tab. 
- Click the Copy button from the `Home` tab.

    ![Basic-Answer-File-Tutorial-4](/Images/Basic-Answer-File-Tutorial-4.png)

- Navigate to the folder you want to use to store the files for the project. 
- Click the New folder button from the `Home` tab. 
- Specify a name for the folder - for example, Windows2004. 
- Open the newly created folder. 
- Click the Paste button from the `Home` tab.

    ![Basic-Answer-File-Tutorial-5](/Images/Basic-Answer-File-Tutorial-5.png)


Once you complete the steps, the installation files will be available on your device. However, to continue, you need to confirm the `install.wim` file image is present in the `sources` folder. If the ISO was created using the Media Creation Tool, you're 
likely to have an `install.esd`, which you won't be able to open because it's encrypted. 

If you don't have an `.wim` image file, you can get the uncrypted image by downloading the latest Windows 10 ISO file from the Microsoft website, or you can use the `Dism` command-line tool to convert the encrypted file to an unencrypted image. -> [Download](https://www.microsoft.com/en-us/download/details.aspx?id=5753).

### 👉Step 4: Convert install.esd to install.wim

In the case that you're stuck with an `install.esd` image, you can use the DISM command tool to export the image files and create a `.wim` image from a `.esd` file.

- Open Start. 
- Search for PowerShell, right-click the top result, and select the Run as administrator option. 
- Type the following command to identify the index number of the edition you want to use and press Enter:
    ```powershell
    dism /Get-WimInfo /WimFile:C:\path\to\folder\sources\install.esd
    ```
    - In the command, make sure to change the path to the sources folder location with the `install.esd` file on your computer. 
- In the command, make sure to change the path to the sources folder location with the `install.esd` file on your computer. 
- Type the following command to create an `install.wim` file and press Enter:
    ```powershell
    dism /Export-Image /SourceImageFile:C:\path\to\folder\sources\install.esd 
    /SourceIndex:6 /DestinationImageFile:C:\path\to\folder\sources\install.wim 
    /Compress:Max /CheckIntegrity 
    ```
- In the command, make sure to change the path to the sources folder location with the `install.esd` file on your device. The destination path should be the same as the source.

    ![Basic-Answer-File-Tutorial-6](/Images/Basic-Answer-File-Tutorial-6.png)

### 👉Step 5: Setting up an answer file environment 

- Open Start. 
- Search for Windows System Image Manager and click the top result to open the console. 
- Click the File menu. 
- Select the Select Windows Image option.

    ![Basic-Answer-File-Tutorial-7](/Images/Basic-Answer-File-Tutorial-7.png)

- Navigate to the folder with the Windows 10 installation files exported. 
- Access the source folder. 
- Select the `install.wim` image file.

    ![Basic-Answer-File-Tutorial-8](/Images/Basic-Answer-File-Tutorial-8.png)

- Click the `Open` button. 
    > Important: Make sure that image is an `install.wim` file. Otherwise, if you have an `install.esd` image, this will not work. 
- Select the edition of Windows 10 you want to use. (Usually, you want to select the version that you're planning to install.)

    ![Basic-Answer-File-Tutorial-9](/Images/Basic-Answer-File-Tutorial-9.png)

- Click the `OK` button. 
- Click the `Yes` button to create a new catalog file (if applicable). 
    > Quick note: This process will take some time, but it's a one-time process. The `.clg` file will be saved in the same location where the `install.wim` is stored, and you can reuse it later on other projects. 
- Under the `Distribution Share` section, right-click on `Select a Distribution Share…` and select the Create Distribution Share option.

    ![Basic-Answer-File-Tutorial-10](/Images/Basic-Answer-File-Tutorial-10.png)

- Click the `Create New Folder` option in the dialog box. 
- Specify a name for the folder – for example, `Distribution` and select the folder. 
- Click the `Open` button.

    ![Basic-Answer-File-Tutorial-11](/Images/Basic-Answer-File-Tutorial-11.png)

- Click the `File` menu. 
- Select the `Select Distribution Share` option.

    ![Basic-Answer-File-Tutorial-12](/Images/Basic-Answer-File-Tutorial-12.png)

- Locate the folder you recently created for the distribution files. 
- Click the `Open` button. 
- Click the `File` menu. 
- Select the `New Answer File` option. 

    ![Basic-Answer-File-Tutorial-13](/Images/Basic-Answer-File-Tutorial-13.png)

After you complete the steps, the environment will be created to configure an answer file.

### 👉Step 6: How to create Windows 10 answer file 

An answer file contains seven different stages (passes), and the stages you need to configure will depend upon the type of automation you want to create.

This guide will help you to get started configuring an autounattend.xml answer file with the minimum requirements to automate the installation of Windows 10 Pro using the 1 windowsPE, 4 specialize, and 7 oobeSystem stages.

> Quick note: Depending on the image, you may see the components name starting with amd64_Microsoft-Windows for the 64-bit version or x86_Microsoft-Windows for the 32-bit version of Windows 10. For this guide, we'll be using the `amd64_Microsoft-Windows` name format.

#### 👉Step 6.1: Configure language and region settings

Under the `Windows Image` section, expand the Components folder. 
- Expand the `amd64_Microsoft-Windows-International-Core-WinPE` component. 
- Right-click the `SetupUILanguage` component and select the `Add Setting to Pass 1 windowsPE` option.

    ![Basic-Answer-File-Tutorial-14](/Images/Basic-Answer-File-Tutorial-14.png)

- Under the `Answer File` section, on the right side, select the `amd64_Microsoft-Windows-International-Core-WinPE` component. 
- Under the `Settings` section, on the right side, define the keyboard, region, primary and fall back language, and device location. For example, if you're located in Belgium, you should be using these settings: 
    - InputLocale: **fr-BE**. 
    - SystemLocale: **fr-BE**. 
    - UILanguage: **fr-BE**. 
    - UserLocale: **fr-BE**.

    ![Basic-Answer-File-Tutorial-15](/Images/Basic-Answer-File-Tutorial-15.png)

> Quick tip: Only users side Belgium should configure `ULLanguageFallback` using the fr-BE value as the fallback language.

- Select the `SetupUILanguage` sub-component. 
- Under the `Settings` section, on the right side, set `UILanguage` with the correct language. For example, because we're doing an install in `Dutch,` we're using the **fr-BE** option. 

    ![Basic-Answer-File-Tutorial-16](/Images/Basic-Answer-File-Tutorial-16.png)

#### 👉Step 6.2: Configure installation settings

Inside the answer file, you also have to specify the settings to properly configure the drive.

- Under the `Windows Image` section, expand the Components folders. 
- Expand the `amd64_Microsoft-Windows-Setup` component. 
- Expand the `DiskConfiguration` component. 
- Right-click the `Disk` component, and select the `Add Setting to Pass 1 windowsPE` option. 

    ![Basic-Answer-File-Tutorial-17](/Images/Basic-Answer-File-Tutorial-17.png)

- Under the `Answer File` section, on the right side, select the `DiskConfiguration` component. 
- Under the `Settings` section, on the right side, set the `WillShowUI` value to `OnError`. (If you leave this setting empty, the installation will stop during the hard drive setup process.)

    ![Basic-Answer-File-Tutorial-18](/Images/Basic-Answer-File-Tutorial-18.png)

- Select the `Disk` component. 
- Under the `Settings` section, on the right side, use these values: 
    - DiskID: 0 
    - WillWipeDisk: true

    ![Basic-Answer-File-Tutorial-19](/Images/Basic-Answer-File-Tutorial-19.png)

> Quick note: Setting the `WillWipeDik` setting to true will make sure to erase everything on the first hard drive before setting up the partitions. If you have anything important on this drive, you should backup the data before proceeding. 


Once you complete the steps to configure the `DiskConfiguration` settings, you'll need to set up the partition layout, depending on whether your device uses a legacy BIOS or UEFI.

The reason is that BIOS-based computers only require two partitions (System Reserved and Windows), and UEFI-based devices require four partitions (WinRE, EFI, MSR, and Windows).

You can check if you're using BIOS or UEFI by opening System Information from the Start menu, and checking the `System Summary.` If `BIOS Mode` reads Legacy, then you're using BIOS; if it reads UEFI, you're using UEFI.

#### 👉Step 6.3: BIOS only: Creating and modifying partitions

- Under the `Answer File` section, expand the `amd64_Microsoft-Windows-Setup` component. 
- Expand the `DiskConfiguration` component. 
- Expand the `Disk` component. 
- Right-click the `CreatePartitions` component, and select the `Insert New CreatePartition` option to create the first partition. 

    ![Basic-Answer-File-Tutorial-20](/Images/Basic-Answer-File-Tutorial-20.png)

- Right-click `CreatePartitions` again, and select the `Insert New CreatePartition` option to create a second partition.
- Select the first CreatePartition.
- Under the `Settings` section, on the right side, use these values to create a partition: 
    - Extend: false.
    - Order: 1.
    - Size: 100000 (100GB).
    - Type: Primary.

    ![Basic-Answer-File-Tutorial-21](/Images/Basic-Answer-File-Tutorial-21.png)

Using the above steps, outlined the steps to carved the partitions. The next steps specify the required file format and partition properties.

- Under the `Answer File` section, expand the `amd64_Microsoft-Windows-Setup` component. 
- Expand the `DiskConfiguration` component. 
- Expand the `Disk` component. 
- Right-click the `ModifyPartition` component, and select the `Insert ModifyPartition` option to modify the first partition.

    ![Basic-Answer-File-Tutorial-22](/Images/Basic-Answer-File-Tutorial-22.png)

- Right-click `ModifyPartition` again, and select the `Insert ModifyPartition` option to modify the second partition. 
- Select the first `ModifyPartition`. 
- Under the `Settings` section, on the right side, use these values to configure a system reserved partition: 
    - Active: true
    - Format: NTFS
    - Letter: C
    - Label: OS
    - Order: 1
    - PartitionID: 1

    ![Basic-Answer-File-Tutorial-23](/Images/Basic-Answer-File-Tutorial-23.png)

You can learn more about the partition layout required for a BIOS system in this Microsoft support page. -> [Learn more](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-biosmbr-based-hard-drive-partitions).
As part of this setup, the last task is to indicate the setup where to install Windows 10.

- Under the `Windows Image` section, expand the Components folders.
- Expand the `amd64_Microsoft-Windows-Setup` component.
- Expand the `ImageInstall` component.
- Expand the `OSImage`.
- Right-click the `InstalTo` component, and select the `Add Setting to Pass 1 windowsPE` option.

    ![Basic-Answer-File-Tutorial-24](/Images/Basic-Answer-File-Tutorial-24.png)

- Under the `Answer File` section, on the right side, select the `InstallTo` component. 
- Under the `Settings` section, on the right side, use these values: 
    - DiskID: 0
    - PartitionID: 1

    ![Basic-Answer-File-Tutorial-25](/Images/Basic-Answer-File-Tutorial-25.png)

The above settings tell the setup to install Windows 10 automatically on the first drive inside the first partition. 
Once you complete the steps, continue with the Defining the product key instructions. 

#### 👉Step 6.4: How to join a domain

This is quite easy simply. Copy my work from down below. This will be my example domain name (test.local).

![Basic-Answer-File-Tutorial-26](/Images/Basic-Answer-File-Tutorial-26.png)

- Identification

    ![Basic-Answer-File-Tutorial-27](/Images/Basic-Answer-File-Tutorial-27.png)

- Credentials
    
    ![Basic-Answer-File-Tutorial-28](/Images/Basic-Answer-File-Tutorial-28.png)


#### 👉Step 6.5: Pass 7 oobeSystem

Using an answer file, you can also automate the configuration of the out-of-box experience (OOBE), including additional language settings, accept the licensing agreement, create a user account, and more

- Under `Windows Image,` expand the Components folders. 
- Right-click the `amd64_Microsoft-Windows-International-Core` component, and select the `Add Setting to Pass 7 oobeSystem` option.

    ![Basic-Answer-File-Tutorial-29](/Images/Basic-Answer-File-Tutorial-29.png)

- Under the `Windows Image` section, expand the `amd64_Microsoft-Shell-Setup` component. 
- Right-click the `OOBE` component, and select the `Add Setting to Pass 7 oobeSystem` option.

    ![Basic-Answer-File-Tutorial-30](/Images/Basic-Answer-File-Tutorial-30.png)

- Expand the `UserAccounts` component.
- Expand the `LocalAccounts` component.
- Right-click the `LocalAccounts` component, and select the `Add Setting to Pass 7 oobeSystem` option.

    ![Basic-Answer-File-Tutorial-31](/Images/Basic-Answer-File-Tutorial-31.png)

- Under the `Answer File` section, expand the `amd64_Microsoft-Shell-Setup` component.
- Select the `OOBE` component.
- Under the `Settings` section, on the right size, use the following values:

    ![Basic-Answer-File-Tutorial-32](/Images/Basic-Answer-File-Tutorial-32.png)

- Expand the `UserAccounts` component. 
- Right-click the `LocalAccounts` component and select the Insert New `LocalAccount` option. 
- Under the `Settings` section, on the right side, use the following configuration to create a primary local account:

    ![Basic-Answer-File-Tutorial-33](/Images/Basic-Answer-File-Tutorial-33.png)

Using the above settings, you'll be creating an account called `PCT_Admin` for user `PCT_Admin,` and we're adding the account to the `Administrators` group that gives the user unrestricted access to the device. Of course, you can always define your custom preferences, including for `Description,` `DisplayName,` `Group,` and `Name`.

- Expand the `LocalAccount` component. 
- Select the `Password` component. 
- Under the `Settings` section, on the right-side, type a password in the Value field.

    ![Basic-Answer-File-Tutorial-34](/Images/Basic-Answer-File-Tutorial-34.png)

While you'll see the password in plain text, after saving the autounattend.xml file, the value will be encrypted.

## 🔗Links:
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com