# Linux Commands Cheatsheet

## File Operations

- `ls` - Lists all files and directories in the current directory.
- `cd directory` - Changes the current directory to 'directory'.
- `pwd` - Prints the current directory path.
- `touch file` - Creates a new file.
- `rm file` - Removes a file.
- `mv file1 file2` - Renames or moves a file from file1 to file2.
- `cp file1 file2` - Copies a file from file1 to file2.
- `cp -r directory1 directory2` - Copies a directory and its contents recursively.

## Directory Operations

- `mkdir directory` - Creates a new directory.
- `rmdir directory` - Removes a directory.
- `rm -r directory` - Removes a directory and its contents.
- `cd -` - to switch between the current and previous directories.

## File Permissions

- `chmod options file` - Changes the permissions for a file.
- `chown user file` - Changes the owner of a file.

### `chmod` Command - Permission Numbers

The `chmod` command in Linux is used to change the permissions of a file or directory. The permissions are represented by a three-digit number, where each digit corresponds to a specific set of permissions.

#### Permission Sets

##### 1. Owner (User):

- The first digit represents the permissions for the owner of the file or directory.

##### 2. Group:

- The second digit represents the permissions for the group associated with the file or directory.

##### 3. Others:

- The third digit represents the permissions for others (users who are not the owner and not in the group).

###### Permission Values

Each digit is a sum of the following values, which represent different permissions:

- **Read (r): 4**

  - Allows reading or viewing the contents of a file or the names of files in a directory.

- **Write (w): 2**

  - Allows modifying the contents of a file or creating, deleting, and renaming files in a directory.

- **Execute (x): 1**
  - For files: Allows the file to be executed (if it is a program or script).
  - For directories: Allows access and listing of the contents of the directory.

###### Examples

###### `chmod 755 file`

- Owner: Read (4) + Write (2) + Execute (1) = 7
- Group: Read (4) + Execute (1) = 5
- Others: Read (4) + Execute (1) = 5
- Result: `rwxr-xr-x`

###### `chmod 644 file`

- Owner: Read (4) + Write (2) = 6
- Group: Read (4) = 4
- Others: Read (4) = 4
- Result: `rw-r--r--`

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
- `traceroute host` - Traces the route packets take to the destination.

## Disk Usage

- `df` - Reports the amount of disk space used by file systems.
- `df -h` - Shows disk space in human-readable format.
- `du` - Shows disk usage of a file or directory.
- `du -sh` - Shows summary in human-readable format.
- `fdisk -l` - Lists all available disk partitions.
- `lsblk` - Displays information about block devices.

## File Viewing

- `cat file` - Outputs the entire file content.
- `more file` - Outputs the file content page by page.
- `less file` - Similar to `more`, but allows backward navigation in the file as well.
- `head file` - Shows the first 10 lines of a file.
- `tail file` - Shows the last 10 lines of a file.
- `vim file` - Opens the file in the Vim text editor.
- `nano file` - Opens the file in the Nano text editor.

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
- `halt` - Halts the system.

## Package Manager

- `sudo apt-get update` - Updates package list.
- `sudo apt-get upgrade` - Upgrades all upgradable packages.
- `sudo apt-get install package` - Installs a package.

## Help

- `man command` - Shows the manual for the command.
- `command -h` or `command --help` - Shows the help text for the command.

Note: Always remember to use the `man` command if you are unsure about any command or its usage. It provides detailed manual pages about every command and its options.
