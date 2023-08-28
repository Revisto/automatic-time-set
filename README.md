# Automatic Time Set Script ⌛️

This script is designed to automatically set the system time to Iran specific time zone on startup. 
It simplifies the process of updating the time zone and ensures accurate time synchronization on Linux systems. 🕒

## Prerequisites 📋

- Linux-based operating system 🐧
- Root access or sudo privileges 🔑


## Installation 💻

To use the Automatic Time Set Script, follow these steps:

1. Clone the repository to your local machine using the following command:

   ```bash
   git clone https://github.com/revisto/automatic-time-set.git
   cd automatic-time-set```


2. Make the script executable by running the following command:

   ```bash
   chmod +x time_set_script.sh```

3. Move it to bin:

   ```bash
   sudo mv set_time_to_iran.sh /bin/```


# Startup Cron Job Setup 🚀

This guide will walk you through setting up a cron job that runs a command automatically every time your system starts up. This is useful for executing tasks or scripts that need to run on system startup.

## Steps to Set a Command in Cron Every Startup ⏰

1. Open a terminal on your Linux system.

2. Edit the crontab file using the following command:

   ```bash
   sudo crontab -e
   ```

3. If prompted to choose an editor, select your preferred text editor (e.g., nano, vim).

4. In the crontab file, add a new line at the end to specify the command you want to run at startup. For example:

   ```bash
   @reboot sudo bash /bin/set_time_to_iran.sh```


# License 📄
This script is licensed under the MIT License. Feel free to modify and distribute it as needed.