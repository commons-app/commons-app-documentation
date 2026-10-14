# How to record a logcat to send to the developers

When the app crashes, your phone writes a technical note explaining why. This guide shows you how to save that note to a file so you can send it to the developer. It takes about 15 minutes the first time.

**You will need:**
- Your Android phone
- A computer (Windows, Mac or Linux)
- A USB cable that can transfer data (some cheap cables only charge)

> ⚠️ **Privacy note:** The log can include some details about other apps on your phone. Only send it to the developer. Feel free to open it in a text editor and check it before sending.

---

## Step 1: Turn on "Developer options" on your phone

1. Open **Settings**.
2. Go to **About phone**. On some phones it's under **Settings → System → About phone**.
3. Find **Build number**. On Xiaomi it's called **MIUI version**, and on some Samsung phones it's under **Software information**.
4. **Tap it 7 times in a row.** You may be asked for your PIN. Then you'll see *"You are now a developer!"*

## Step 2: Turn on "USB debugging"

1. Go back to **Settings** and open **Developer options**. It's often under **Settings → System**.
2. Find **USB debugging** and turn it **ON**.
3. Tap **OK** to confirm.

---

## Step 3: Install the logging tool (ADB) on your computer

ADB is a small, free tool from Google. Follow the steps for your computer below.

### 🪟 Windows

1. Download **SDK Platform-Tools for Windows**:
   https://developer.android.com/tools/releases/platform-tools
2. Right-click the downloaded `.zip` file and choose **Extract All…**. Extract it to your **Desktop**.
3. You now have a folder named **`platform-tools`** on your Desktop. Open it.
4. Click the address bar at the top of the window, type `cmd` and press **Enter**. A black window opens. Keep it open.

> In the commands below, type `adb` exactly as shown. If Windows says it doesn't recognize `adb`, type `.\adb` instead.

### 🍎 Mac

**Option A (simplest):**
1. Download **SDK Platform-Tools for Mac**:
   https://developer.android.com/tools/releases/platform-tools
2. Double-click the `.zip` to extract it. Move the **`platform-tools`** folder to your **Desktop**.
3. Open the **Terminal** app (press `Cmd + Space`, type `Terminal`, press Enter).
4. Type this and press Enter:
   ```
   cd ~/Desktop/platform-tools
   ```

> In the commands below, type `./adb` instead of `adb`.
> If your Mac says the app "cannot be opened", go to **System Settings → Privacy & Security** and click **Allow Anyway**, then try again.

**Option B (if you already use Homebrew):**
```
brew install --cask android-platform-tools
```

### 🐧 Linux

Open a **Terminal** and run the command for your system:

- **Ubuntu / Debian / Linux Mint:**
  ```
  sudo apt install adb
  ```
- **Fedora:**
  ```
  sudo dnf install android-tools
  ```
- **Arch / Manjaro:**
  ```
  sudo pacman -S android-tools
  ```

Then go to your home folder:
```
cd ~
```

---

## Step 4: Connect your phone

1. Plug your phone into the computer with the USB cable.
2. If the phone asks what the USB connection is for, choose **File transfer**.
3. In the computer window, type:
   ```
   adb devices
   ```
4. **Look at your phone.** A message will ask **"Allow USB debugging?"** Tick **"Always allow from this computer"** and tap **Allow**.
5. Type `adb devices` again. You should see a line ending in **`device`**, for example:
   ```
   List of devices attached
   R58M12ABCDE    device
   ```

**If it doesn't work:**
- `unauthorized`: unlock your phone and accept the message on screen.
- Nothing listed: try another cable or USB port, or select **File transfer** on the phone again.
- Windows only: you may need your phone maker's USB driver. Search for "*[your phone brand] USB driver*".

---

## Step 5: Record the crash

1. **Clear old logs** so the file only contains what's new:
   ```
   adb logcat -c
   ```
2. **Start recording** to a file:
   ```
   adb logcat > crashlog.txt
   ```
   The window will look like nothing is happening. That's normal, because it's recording in the background. **Don't close it.**
3. **On your phone, use the app and make it crash** the same way it usually does.
4. Wait about 5 seconds after the crash.
5. **Stop recording:** click the computer window and press **`Ctrl + C`**. This works on Mac too: use Ctrl, not Cmd.

---

## Step 6: Send the file

The file **`crashlog.txt`** is in:
- **Windows / Mac:** the `platform-tools` folder on your Desktop
- **Linux:** your home folder

Attach it to an email and send it to the developer, together with:
- the GitHub issue number,
- roughly at what time you triggered the crash, so that we can find the relevant log lines more easily.

If you have no developer's email address, send to Nicolas Raoul whose email address is visible at https://nicolasraoul.github.io.

---

## Step 7 (optional): Turn things back off

When you're done, you can go to **Settings → Developer options** and switch **USB debugging** off, or switch off Developer options completely.

**Thank you, this really helps fix the problem! 🙏**
