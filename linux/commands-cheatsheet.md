# Linux Commands Cheatsheet

## File Operations

- `ls` - Lists all files and directories in the current directory.
- `cd directory` - Changes the current directory to 'directory'.
- `pwd` - Prints the current directory path.
- `touch file` - Creates a new file.
- `rm file` - Removes a file.
- `mv file1 file2` - Renames or moves a file from file1 to file2.
- `cp file1 file2` - Copies a file from file1 to file2.

## Directory Operations

- `mkdir directory` - Creates a new directory.
- `rmdir directory` - Removes a directory.
- `rm -r directory` - Removes a directory and its contents.

## File Permissions

- `chmod options file` - Changes the permissions for a file.
- `chown user file` - Changes the owner of a file.

## Process Operations

- `ps` - Shows current processes.
- `top` - Displays active processes. Press q to quit.
- `bg` - Puts a process in the background.
- `fg` - Puts a process in the foreground.
- `kill pid` - Kills a process with given pid.

## Network

- `ping host` - Pings a host and outputs results.
- `ifconfig` - Displays network information for your machine.
- `netstat` - Network Statistics.
- `nslookup` - DNS records for a specific domain. (listing nameservers exp: nslookup -type=ns www.google.com)

## Disk Usage

- `df` - Reports the amount of disk space used by file systems.
- `df -h` - Shows disk space in human-readable format.
- `du` - Shows disk usage of a file or directory.
- `du -sh` - Shows summary in human-readable format.

## File Viewing

- `cat file` - Outputs the entire file content.
- `more file` - Outputs the file content page by page.
- `less file` - Similar to `more`, but allows backward navigation in the file as well.
- `head file` - Shows the first 10 lines of a file.
- `tail file` - Shows the last 10 lines of a file.

## Searching

- `grep pattern file` - Search for pattern within file.
- `grep -r pattern dir` - Search recursively for pattern in dir.
- `find /dir -name file` - Find directories or files named file under directory dir.
- `find /dir -user name` - Find files owned by user 'name' under directory dir.
- `find /dir -mmin num` - Find files modified within 'num' minutes under directory dir.
- `find /dir -size +1G` - Find files larger than 1 Gigabyte under directory dir.

## File Compression and Decompression

### tar

- `tar -cvf archive.tar directory` - Creates a tar archive.
- `tar -xvf archive.tar` - Extracts a tar archive.
- `tar -zcvf archive.tar.gz directory` - Creates a gzipped tar archive.
- `tar -zxvf archive.tar.gz` - Extracts a gzipped tar archive.

### gzip

- `gzip file` - Compresses a file to `file.gz`.
- `gzip -d file.gz` - Decompresses a gzipped file.

### zip/unzip

- `zip archive.zip file` - Creates a zip archive.
- `unzip archive.zip` - Extracts a zip archive.

## System Operations

- `shutdown` - Shuts down the system.
- `reboot` - Reboots the system.

## Package Manager

- `sudo apt-get update` - Updates package list.
- `sudo apt-get upgrade` - Upgrades all upgradable packages.
- `sudo apt-get install package` - Installs a package.

## Help

- `man command` - Shows the manual for the command.
- `command -h` or `command --help` - Shows the help text for the command.

Note: Always remember to use the `man` command if you are unsure about any command or its usage. It provides detailed manual pages about every command and its options.
