# MySQL & MySQL Workbench : Windows Setup

## Download the Installer

1. In order to install MySQL and MySQL Workbench, go to MySQL official website and find the **Community Downloads** section.
 > Take care not to download the Enterprise Edition !
2. You need to download **MySQL Installer 8.0.13** (version as of 01.02.19) for Windows x64. You shall download the Web Installer (~16Mo vs ~150Mo). 
> **You do not need to sign up** to download the file !

## Setup with MySQL Installer

1. Launch the Installer and select **Developer Default** when asked.
2. You may need to install dependencies. **Click on Execute** to install the requirements.
> MySQL Installer will be on hold until the **dependency setup** is installed. Take care to follow instructions of any new installer window that would be waiting in background, in order not to be blocked.

> Depending on these dependencies, the installer might take more or less time in your system to setup MySQL and its tools.

3. When **most of the checks are green**, you can avoid installing "MySQL for Visual Studio" and "Connector/Python" if those are still unchecked. This is because Visual Studio and Python are not installed in your system.

4. You may click **Next** then **Execute**.

5. When complete, click **Next** then select **Standalone MySQL Server** and configure as so:
- Config Type: Development Computer
- Connectivity: TCP/IP on port 3306
- Open Windows Firewall ports
- **Click Next** then **Use Strong Password Encryption**

6. Create a root password **which have to be** `root`. This is because locally and for learning purposes only, we shall all use the same default password.

7. Do not create any user (learning purposes only, again).

8. **Windows Service** page: keep the default values. **Next** then **Execute**.
9. **MySQL Router Configuration** page: keep the default values.
10. **Connect to Server** page : type the root password and click **Check** to confirm that the connexion is working. **Next** then **Execute**.