# Wayang Kulit Unreal Engine Project

## Opening the Project on a Windows Computer

**Author:** Rodrigo Antonio Vega Cruz\
**Date:** October 15, 2025\
**Affiliation:** CHI / City Tech

---

## Table of Contents

1. [Introduction](#1-introduction)
2. [Prelaunch Considerations](#2-prelaunch-considerations)
   - [Required Version Number](#21-required-version-number)
   - [Installing Unreal](#22-installing-unreal)
   - [Using a Laptop with MUX Switch](#23-using-a-laptop-with-mux-switch)
3. [Windows Performance Settings](#3-windows-performance-settings)
4. [Opening the Unreal Engine Project](#4-opening-the-unreal-engine-project)

---

## 1. Introduction

This document provides instructions on how to run the **Unreal Engine project** on a computer running a modern version of Windows **natively**. The Unreal Engine project has **not been tested** on a virtual machine. Therefore, these instructions may not apply to users running Windows in a virtualized environment.

---

## 2. Prelaunch Considerations

Before opening the Unreal Engine project, ensure that the following conditions are met.

### 2.1 Required Version Number

- Verify that you have **Unreal Engine 5.5.4** or a later version installed.

  - First digit must be **5**.
  - Second digit must be **5**.
  - Third digit must be **4** or higher.

- Confirm that your system is running **Windows 11**.

  - Note the specific Windows version and build number used.
  - This project was developed on a version current as of **January 2025**.

---

### 2.2 Installing Unreal

If Unreal Engine 5 is not installed, follow these steps:

1. **Download and install the Epic Games Launcher.**
   - During installation, allow necessary permissions through the Windows Firewall.
2. **Open the Epic Games Launcher.**
   - You may need to create or log in to an **Epic Games Account**.
3. Navigate to **Unreal Engine → Library** and **add an engine version**.
   - Select **Unreal Engine 5.5.4 or higher**.
4. **Install Unreal Engine** on an **internal SSD** for optimal performance.
   - If using an external or adapter-connected drive, ensure it supports **high-speed data transfer**.
5. **Run Unreal Engine once before opening the project.**
   - This step ensures all necessary components and permissions are properly configured.

If no errors occur, Unreal Engine 5 should now be ready to open the project.

---

### 2.3 Using a Laptop with MUX Switch

If using a laptop equipped with a **MUX switch** (to toggle between integrated and discrete GPU modes):

#### 2.3.1 For ASUS ROG Laptops (Armoury Crate)

1. Open **Armoury Crate**. Avoid minimizing the application during startup.
2. Go to **Devices → [Your Laptop] → GPU Performance**.
3. Select **Ultimate GPU Mode**.
   - You may be prompted to restart; do so if required.
4. After restart, Unreal Engine can be opened normally.

#### 2.3.2 Alternate Method (NVIDIA Control Panel)

If you prefer not to restart or your laptop doesn’t support Armoury Crate:

1. Close all open windows and full-screen applications.
2. Open **Armoury Crate** → Devices → GPU Performance → set to **Standard GPU Mode**.
3. Open **NVIDIA Control Panel** → **3D Settings → Manage Display Mode**.
4. Set Display Mode to **NVIDIA GPU only** and **Apply** changes immediately.
   - Confirm any pop-up prompts quickly to avoid reversion.

#### 2.3.3 Final Preparation

- Ensure the laptop is connected to its **original charger** and **set to Turbo Mode** in Armoury Crate.
- For desktops, simply ensure the display is connected directly to the GPU output.

---

## 3. Windows Performance Settings

In **Windows 11 Settings → System → Power & Battery**, adjust the following:

- Set **Power Mode (Plugged in)** → *Best Performance*
- Set **Power Mode (On Battery)** → *Best Performance*

Your computer should now be ready to open the Unreal Engine project.

---

## 4. Opening the Unreal Engine Project

Follow these steps carefully:

1. **Install GitHub Desktop.**

2. **Clone the project repository:**

   ```bash
   https://github.com/CHI-CityTech/Shadow_puppet_Unreal
   ```

   - Avoid cloning into cloud-synced folders (e.g., OneDrive, Dropbox).

3. Go to the **main branch** and **Fetch/Pull Origin** to ensure you have the latest version.

4. Navigate to the cloned project folder:

   ```bash
   Shadow_puppet_test
   ```

5. Double-click `Shadow_puppet_test.uproject` to open the project.

   - The first launch may take several minutes.
   - Approve any prompts to reopen prior windows.

6. With the editor open and active, press **CTRL + SPACE**.

   - Navigate to `Content → Levels → Rigging_Enclosed_Puppet_show`.
   - Open this level (skip if already loaded).

7. Inside the level:

   - Press **Play**.
   - Use **WASD** and mouse movement to navigate to the front of the stage.
   - Stand in front of the **yellowish-white surface** to view the shadow puppet animation.

---

### Important Note

> **Do not push changes into any of Rodrigo Antonio Vega Cruz’s branches.**\
> If you need to push updates, contact **Dr. David B. Smith** to confirm permissions.

---

**End of Document**

