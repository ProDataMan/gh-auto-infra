# Setup Student VM's

### Launch VS Code in Administrator Mode to Install software in a Terminal window

### Step 1: Run VS Code as Administrator
1. Close any open instances of Visual Studio Code.
2. Search for "Visual Studio Code" in the Start menu.
3. Right-click on it and select **Run as Administrator**.
   - If prompted by User Account Control (UAC), click **Yes** to allow it.

---
### **Step 2: Open the Integrated Terminal**
1. In VS Code, click on the **Terminal** menu at the top and select **New Terminal**.
   - Alternatively, use the shortcut: `Ctrl + ~` (Windows/Linux) or `Cmd + ~` (Mac).
2. Ensure the terminal is using **PowerShell**, as Chocolatey requires it.

---

### **Step 3: Set Execution Policy**
1. Check the current execution policy by running:
   ```powershell
   Get-ExecutionPolicy
   ```
2. If the policy is not `AllSigned` or `Bypass`, set it to `Bypass` temporarily:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force
   ```

---

## Install Chocolatey

### **Step 4: Install Chocolatey**
1. Run the following command in the terminal:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```
2. Wait for the script to complete. Chocolatey will be installed on your system.

---

### **Step 5: Verify the Installation**
1. Test that Chocolatey is installed by running:
   ```powershell
   choco --version
   ```
   - This should display the installed version of Chocolatey.

---

### **Step 6: Test Chocolatey with a Package Installation (Optional)**
1. Try installing a test package to confirm everything is working:
   ```powershell
   choco install git -y
   ```
2. After installation, confirm that the package works (e.g., `git --version`).

---

### **Important Note:**
Always remember to run VS Code in **Administrator mode** whenever you need to use Chocolatey for installing or managing software that requires system-level changes.

## Install wget

``` bash
choco install wget
```
## Install Terraform
#### Get binaries ####

#### Get the latest Terraform version from GitHub API
``` bash
TER_VER=$(curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\, | awk '{$1=$1};1' | sed 's/^v//')
```
#### Download the Terraform ZIP file for Windows
``` bash
wget https://releases.hashicorp.com/terraform/${TER_VER}/terraform_${TER_VER}_windows_amd64.zip -O terraform.zip```
```
#### unzip
``` bash
powershell -Command "Expand-Archive -Path terraform.zip -DestinationPath ."
```
#### delete the zip
``` bash
del terraform.zip
```
#### Move the exe to the System32 folder which is already in the path
``` bash
mv terraform.exe /c/Windows/System32
```

## Install git for windows
---

### **Step 1: Download the Git Installer**
1. Open your browser and go to the official Git website: [https://git-scm.com/](https://git-scm.com/).
2. Click on the **Download for Windows** button, which will automatically download the installer for your version of Windows.

---

### **Step 2: Run the Git Installer**
1. Locate the downloaded installer file (e.g., `Git-<version>-64-bit.exe`) in your downloads folder.
2. Double-click the file to start the installation process.

---

### **Step 3: Accept the License Agreement**
1. In the setup wizard, read the license agreement and click **Next** to accept it.

---

### **Step 4: Choose Installation Path**
1. The default installation path is `C:\Program Files\Git`. You can change it if desired, but the default is recommended.
2. Click **Next** to proceed.

---

### **Step 5: Select Components**
1. Choose the components you want to install. The default options are fine for most users.
   - Ensure **"Git Bash Here"** and **"Git GUI Here"** are selected for ease of use.
2. Click **Next**.

---

### **Step 6: Select the Default Editor**
1. Select your default editor for Git. Common choices include:
   - **Vim** (default)
   - **Visual Studio Code** (recommended for developers familiar with VS Code)
2. After making your selection, click **Next**.

---

### **Step 7: Adjust PATH Environment**
1. Choose how Git will be added to your system’s PATH. 
   - **Recommended Option:** *Git from the command line and also from 3rd-party software* (adds Git commands to your command-line tools).
2. Click **Next**.

---

### **Step 8: Choose HTTPS Transport Backend**
1. Select the HTTPS transport backend. The default **"Use the OpenSSL library"** is recommended.
2. Click **Next**.

---

### **Step 9: Configure Line Ending Conversions**
1. Choose how Git should handle line endings:
   - **Recommended Option:** *Checkout Windows-style, commit Unix-style line endings.*
2. Click **Next**.

---

### **Step 10: Configure Terminal Emulator**
1. Select the terminal emulator to use with Git Bash:
   - **Recommended Option:** *Use MinTTY (default terminal of MSYS2).*
2. Click **Next**.

---

### **Step 11: Configure Additional Options**
1. Configure the additional options based on your needs:
   - Enable **Git Credential Manager** to save authentication credentials securely.
   - Enable **File System Caching** for better performance.
2. Click **Next**.

---

### **Step 12: Complete Installation**
1. Click **Install** to begin the installation.
2. Wait for the installation to complete. This may take a few minutes.
3. Once finished, click **Finish**.

---

### **Step 13: Verify Git Installation**
1. Open **Git Bash** or the Command Prompt.
2. Type the following command and press Enter:
   ```
   git --version
   ```
   - This will display the installed Git version, confirming the installation was successful.

# Install GitHub actions for VSCode

### **Step 1: Open Visual Studio Code**
1. Launch **Visual Studio Code** on your computer.
2. Make sure you have it installed. If not, you can download it from [https://code.visualstudio.com/](https://code.visualstudio.com/).

---

### **Step 2: Open the Extensions View**
1. In VS Code, click on the **Extensions** icon on the left-hand sidebar. 
   - Alternatively, press `Ctrl + Shift + X` (Windows/Linux) or `Cmd + Shift + X` (Mac) to open the Extensions view.

---

### **Step 3: Search for the GitHub Actions Extension**
1. In the search bar at the top of the Extensions view, type:
   ```
   GitHub Actions
   ```
2. Look for the **GitHub Actions** extension, usually published by **GitHub**.

---

### **Step 4: Install the Extension**
1. Click the **Install** button for the GitHub Actions extension.
   - The extension will download and install automatically.

---

### **Step 5: Sign In to GitHub**
1. After installation, the extension may prompt you to sign in to your GitHub account.
2. Click **Sign In** and follow the instructions:
   - A browser window will open, asking you to log in to GitHub.
   - Once logged in, approve the VS Code GitHub authorization request.

---

### **Step 6: Open a Repository with GitHub Actions**
1. Open a repository that contains a `.github/workflows` directory, or create one if it doesn’t exist.
   - This directory is where GitHub Actions workflows are stored.

---

### **Step 7: Explore GitHub Actions Features**
1. Once the extension is installed and authenticated, you can:
   - View and manage workflows directly in VS Code.
   - Debug or monitor workflow runs.
   - Trigger workflows manually.
2. Open the **Command Palette** (press `Ctrl + Shift + P` or `Cmd + Shift + P`) and type:
   ```
   GitHub Actions
   ```
   - Explore available commands like viewing workflows or logs.

---

### **Step 8: Configure Workflows**
1. If you don’t have workflows set up, you can use the extension to create new workflow files:
   - Go to the **Explorer** view in VS Code.
   - Right-click in the `.github/workflows` directory and select **New File**.
   - Name the file (e.g., `ci.yml`) and define your workflow.
2. The GitHub Actions extension can assist in validating and editing these files.

---

### **Step 9: Verify the Installation**
1. In the Extensions view, ensure the **GitHub Actions** extension is listed as **Installed**.
2. In the Command Palette, type:
   ```
   GitHub Actions: View Workflow Logs
   ```
   - If successful, you’ll see a list of workflows and their logs.

---

### **Step 10: Test a Workflow**
1. Trigger a workflow from VS Code by navigating to the workflow file in the Explorer and selecting **Run Workflow** from the Actions menu.

---
## Download and Install the AWS CLI

### Step 1: Download the AWS CLI Installation file
1. Go to [AWS CLI](https://awscli.amazonaws.com/AWSCLIV2-2.0.30.msi)

### Step 2: Run the AWS CLI Install
1. Run AWSCLIV2-2.0.30.msi
2. accepts all defaults

## Create an AWS Access Key

### Step 1: Log In to the AWS Management Console
1. Go to the [AWS Management Console](https://d-91672d0af2.awsapps.com/start).
2. Log in with your **AWS account credentials**.

---

### Step 2: Copy the Access Key ID and Secret Access Key
1. Scroll down to Option 1
2. Click the copy icon on the right
3. Paste into a BASH terminal in VS Code

### Step 3: Test Your Access Key
1. Open your terminal and configure the AWS CLI:
   ```bash
   aws configure
   ```
   - Enter the **Access Key ID** and **Secret Access Key** when prompted.
   - Set your **default region** (e.g., `us-west-2`) and **output format** (e.g., `json`).

2. Verify your configuration by running:
   ```bash
   aws sts get-caller-identity
   ```
   - This should return your AWS account details.

---
