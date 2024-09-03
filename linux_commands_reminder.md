# Linux Commands Notes

1. **ls -l**
   - Displays a detailed list of files and directories.

2. **ls -al**
   - Lists all files, including hidden ones, with detailed information.

3. **pwd**
   - Prints the current working directory.

4. **touch file_name**
   - Creates a new file with the specified name.

5. **nano file_name**
   - Creates and opens a file in the Nano text editor for editing.

6. **cat >> file_name**
   - Creates a file if it does not exist and allows simple appending of text (often used for copy-paste).

7. **vim file_name**
   - Opens a file in the Vim text editor for editing (use `:wq` to save and exit).

8. **sudo passwd your_username**
   - Changes the password for the specified user.

9. **whatis program_name**
   - Displays a brief description of what a program does.

10. **which program_name**
    - Shows the path of the default installed program.

11. **whereis program_name**
    - Locates the binary, source, and manual page files for a command.

12. **zip file.zip file**
    - Compresses a file into a zip archive.

13. **unzip file.zip**
    - Extracts files from a zip archive.

14. **cmp file1 file2**
    - Compares two files and shows the first difference, if any, on a line-by-line basis.

15. **diff file1 file2**
    - Compares two files and shows the exact differences.

16. **sudo find / -name "deneme*"**
    - Searches for files or directories containing "deneme" in all locations.

17. **sudo find . -type f -name ".*"**
    - Finds hidden files in the current directory and its subdirectories.

18. **find . -type f -empty**
    - Lists all empty directories.

19. **ip address | grep eth0 | grep inet | awk '{print $2}'**
    - Extracts the IP address from the `ip address` command output.

20. **uname -a**
    - Displays detailed information about the kernel version.

21. **neofetch (package)**
    - Displays system information, including the operating system and hardware details.

22. **free**
    - Shows details about memory usage.

23. **df -H**
    - Displays the amount of free disk space.

24. **ps -aux**
    - Shows a list of running processes and their details.

25. **ps -aux | grep python**
    - Finds running processes related to Python.

26. **kill -9 pid**
    - Terminates a process with the specified PID.

27. **pkill -f app_name**
    - Terminates a process by its name.

28. **sudo shutdown -h now**
    - Immediately shuts down the system.
