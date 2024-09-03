Linux Commands Notes
ls -l

Displays a detailed list of files and directories.
ls -al

Lists all files, including hidden ones, with detailed information.
pwd

Prints the current working directory.
touch file_name

Creates a new file with the specified name.
nano file_name

Creates and opens a file in the Nano text editor for editing.
cat >> file_name

Creates a file if it does not exist and allows simple appending of text (often used for copy-paste).
vim file_name

Opens a file in the Vim text editor for editing (use :wq to save and exit).
sudo passwd your_username

Changes the password for the specified user.
whatis program_name

Displays a brief description of what a program does.
which program_name

Shows the path of the default installed program.
whereis program_name

Locates the binary, source, and manual page files for a command.
zip file.zip file

Compresses a file into a zip archive.
unzip file.zip

Extracts files from a zip archive.
cmp file1 file2

Compares two files and shows the first difference, if any, on a line-by-line basis.
diff file1 file2

Compares two files and shows the exact differences.
sudo find / -name "deneme"*

Searches for files or directories containing "deneme" in all locations.
sudo find . -type f -name ".*"

Finds hidden files in the current directory and its subdirectories.
find . -type f -empty

Lists all empty directories.
ip address | grep eth0 | grep inet | awk '{print $2}'

Extracts the IP address from the ip address command output.
uname -a

Displays detailed information about the kernel version.
neofetch (package)

Displays system information, including the operating system and hardware details.
free

Shows details about memory usage.
df -H

Displays the amount of free disk space.
ps -aux

Shows a list of running processes and their details.
ps -aux | grep python

Finds running processes related to Python.
kill -9 pid

Terminates a process with the specified PID.
pkill -f app_name

Terminates a process by its name.
sudo shutdown -h now

Immediately shuts down the system.
