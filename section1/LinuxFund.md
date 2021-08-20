# Progression

Founded 30 :key: to :unlock: 30 :lock:

# Menu

<ol>
    <li> ✅
        <a href='#1'>
            Check diskspaces
        </a>
    </li>
    <li> ✅
        <a href='#2'>
            Check disk partitions
        </a>
    </li>
    <li> ✅
        <a href='#3'>
            Check cpu, ram
        </a>
    </li>
    <li> ✅
        <a href='#4'>
            Check network
        </a>
    </li>
    <li> ✅
        <a href='#5'>
            Check processes
        </a>
    </li>
    <li> ✅
        <a href='#6'>
            List directories
        </a>
    </li>
    <li> ✅
        <a href='#7'>
            Find file/folder
        </a>
    </li>
    <li> ✅
        <a href='#8'>
            Copy file/folder
        </a>
    </li>
    <li> ✅
        <a href='#9'>
            Move file/folder
        </a>
    </li>
    <li> ✅
        <a href='#10'>
            Rename file/folder
        </a>
    </li>
    <li> ✅
        <a href='#11'>
            Permissions
        </a>
    </li>
    <li> ✅
        <a href='#12'>
            Editor (vi/nano/gedit)
        </a>
    </li>
    <li> ✅
        <a href='#13'>
            Mount/Umount
        </a>
    </li>
    <li> ✅
        <a href='#14'>
            Symbolic Links
        </a>
    </li>
    <li> ✅
        <a href='#15'>
            Hard Links
        </a>
    </li>
    <li> ✅
        <a href='#16'>
            SSH key generator
        </a>
    </li>
    <li> ✅
        <a href='#17'>
            Compress/Decompress
        </a>
    </li>
    <li> ✅
        <a href='#18'>
            Firewall
        </a>
    </li>
    <li> ✅
        <a href='#19'>
            Transfer file via ssh
        </a>
    </li>
    <li> ✅
        <a href='#20'>
            View file content without editor
        </a>
    </li>
    <li> ✅
        <a href='#21'>
            Append file content
        </a>
    </li>
     <li> ✅
        <a href='#22'>
            nmap
        </a>
    </li>
     <li> ✅
        <a href='#23'>
            telnet
        </a>
    </li>
     <li> ✅
        <a href='#24'>
            ssh
        </a>
    </li>
     <li> ✅
        <a href='#25'>
            ping
        </a>
    </li>
    <li> ✅
        <a href='#26'>
            Redirect standard input
        </a>
    </li>
    <li> ✅
        <a href='#27'>
            Redirect standard output
        </a>
    </li>
    <li> ✅
        <a href='#28'>
            Redirect standard error
        </a>
    </li>
    <li> ✅
        <a href='#29'>
            /dev/null
        </a>
    </li>
    <li> ✅
        <a href='#30'>
            vnstat for traffic management
        </a>
    </li>
</ol>

# Main dishes
<span style="color: red;">## Warning:</span> Useful options section is in my perspective

## 1. Check diskspaces

Command:
```
df [OPTION]... [FILE]
```

Usage:
```
report file system disk space usage
```

Useful options:
```
-a, --all: include pseudo, duplicate, inaccesible file systems
-h, --human-readable: print sizes in powers of 1024 (e.g., 1023M)
--output[=FIELD_LIST]
*FIELD_LIST:
source: disk
size: the total disk value
used: the disk used in the file system
avail: the disk available in the file system
pcent: percentage diskspace used
target: mouting point
```
Image:

![df](images/df.png)

<div id='2'></div>

## 2. Check disk partitions

Command:

<span style="color: red;">## Warning:</span> sudo required
```
fdisk [options] device
```
```
fdisk -l [device...]
```

Usage:
```
manipulate disk partition table
```

Useful options:
```
-x: for more information
```

Image:
![fdisk](images/fdisk.png)

<div id='3'></div>

## 3 Check CPU, ram (real-time)

Command:

```
top 
```

Usage:
```
display Linux processes
```

Image:
![top](images/top.png)

Information:
```
PID: process ID
USER: which user running the process
PR: process priority (0-99: realtime; 100-139: user)
NI: nice value user-space
%CPU: CPU used
%MEM: memory used
TIME+: time to live
COMMAND: this pid is running this process
```

## 4 Check network

<div id='4'></div>

Command:

```
netstat
```

Usage:
```
print information about network
```

Useful options:
```
-l: show the listen socket
-t: tcp connections
-u: udp connections
-n: show numberic
-r: show routing table
-p: show process id for each socket
```
Image: In this case, I filtered port 22 by command `netstat -lvnp | grep ':22'`
![netstat](images/netstat.png)

## 5. Check processes
<div id='5'></div>

Command:

```
ps
```

Usage:
```
report a snapshot of the current processes
```

Useful options:
```
-aux: print all process owned by a user named x(could replace x by username)
```

Image:
![ps](images/ps.png)

## 6. List directories
<div id='6'></div>

Command:

```
ls
```

Usage:
```
list directory
```

Useful options:
```
-a: list all directories
-l: show the authority of the directory (permissions, owner, group owner, etc..)
```
Image:
![ls](images/ls.png)

### 7. Find file/folder

<div id='7'></div>

Command:

```
find <directory_to_find> [options]
```

Usage:
```
search for files in a directory hierarchy
```

Useful options:
```
find / -name <file_name> 2>&1
-name: name of the file to find
-type: type of the file to find
-perm: permission of the file to find
```
Image:
![find](images/find.png)

## 8.Copy file/folder

<div id='8'></div>

Command:

```
cp <path_to_source_file> <path_to_dest_file>
```
```
cp -R <path_to_source_folder> <path_to_dest_folder>
```

Usage:
```
copy file/folder from source path to destination path
```

Useful options:
```
-R: recursive
```
Image:
![cp](images/cp.png)

## 9. Move file/folder

<div id='9'></div>

Command:

```
mv <path_to_source_file> <path_to_dest_file>
```

Usage:
```
move file/folder from source path to destination path
```

Useful options:
```
-i: interactive (overwrite existing)
-b: make a backup
```

## 10. Rename file/folder

<div id='10'></div>

Command:

```
mv <path_to_source_file> <path_to_dest_file>
```
OR install rename for Debian, prename for RHEL
```
rename [options]
```

Usage:
```
rename file/folder
```

Useful options:
```
-f: overwrite 
-d: rename filename component of path
```
Image:
![rename](images/rename.png)

## 11. Permissions

<div id='11'></div>

Command:

```
* Create user: useradd
* Modify: usermod
* Delete: userdel
* Change permission: chmod
* Change owner: chown
```

Usage:
```
user/group administration
```

Useful options:
```
chmod -R: change permission for all file in directory
chmod -aG: change group 
```
Image:
![chmod](images/chmod.png)

## 12. Editor

<div id='12'></div>

Command:

```
vi || nano || gedit <file_name>
```

Usage:
```
* For `vi`, press `i` (or INSERT) to using 'INSERT' mode. `d+d` for delete the current line, `ESC` to exit mode, `:wq!` (or `SHIFT + Z + Z`) to save and exit, `:q!` to ignore change and exit.
* For `nano`, when we editted, we can use `ctrl + s` to save and `ctrl + x` to exit
* For `gedit`, we using as notepad (not default, must installed)
```

Image:
This is `vi` in insert mode, and the mode (`INSERT` | `REPLACE` show on the bottom left of the terminal)
![vi](images/vi.png)

## 13. Mount/Umount

<div id='13'></div>

Command:

```
mount <from> <to>
umount <from> <to>
```

Usage:
```
mount the file systems to devio
```

Useful options:
```
```
Image:
Here, I have a device. If I want to use it, i must mount it to the file system
![usb1](images/usb1.png)
Here is my rescue USB after mounting
![usb2](images/usb2.png)
Umount
![umount](images/umount.png)
## 14. Symbolic Links

<div id='14'></div>

** Delete src file will make the link file broken
Command:

```
ln -s [target file] [symbolic filename]
```
* Delete symlink:
```
unlink [symlink to remove]
```

Usage:
```
make sym link between file/folder => like shortcut in Windows
```

Useful options:
```
-b: backup
-f: force
```
Image:
![lns](images/lns.png)

## 15. Hard Links

Command:

```
ln [target file] [symbolic filename]
```

Usage:
```
make link between file/folder => like shortcut in Windows
```

Image:
![ln](images/ln.png)

## 16. SSH key generator

Command:

```
ssh-keygen <options> <...>
```

Usage:
```
generator ssh keygen
```

Useful options:
```
-t: type of key to create (rsa|dsa|ecdsa...)
```
Image:
![ssh-keygen](images/ssh-keygen.png)

After generation progress, `ssh-keygen` will output 1 public key `id_rsa.pub` (for server) 1 private key `id_rsa` (for client) to authenticate  

## 17. Compress/Decompress

Command:

```
tar [options] <file_name>
```

Usage:
```
an archieving utility
```

Useful options:
```
-cvf: compress .tar
-zcvf: compress .tar.gz
-cvjf: compress .tar.bz2
-xvf: decompress .tar
-C: extract to
-tvf: list content in compressed file
```
Image:
* Compress
![compress](images/compress.png)

* Decompress
![decompress](images/decompress.png)

## 18. Firewall

Command:

```
ufw
```
```
iptables
```

Usage:
```
ufw need to installed manually
```

Useful options:
```
status
allow
reject
```
Image:
![ufw](images/ufw.png)

## 19. Transfer file via ssh

Command:

```
scp <src> <dest>
```

Usage:
```
transfer file from local host to remote host via ssh (ssh started)
```

Useful options:
```
-R: directory
```
Image:
![scp](images/scp.png)

## 20. View file content without editor

Command:

```
grep [file_name_pattern] <file_name> (pr file path)
```
```
while read line; do echo $line; done < [file_name]
```

Usage:
```
view file content without editor
```

Useful options:
```
-R: recursive (view all file content in directory)
```
Image:
![viewcontentwoeditor](images/viewcontentwoeditor.png)

## 21 Append file content

Command:

```
echo "<content>" >> <file_path> (or file name)
```

Usage:
```
append file content
```

Useful options:
```
>: overwrite 
```
Image:
![appendFcontent](images/appendFcontent.png)

## 22. nmap

Command:

```
nmap <ip>
```

Usage:
```
port scanning
```

Useful options:
```
-sT: scan TCP
-sC: default script
-sV: version detection
-O: discovery OS
-oN: output file
```
Image:
![nmap](images/nmap.png)

## 23. telnet

Command:

```
telnet <ip> (port)
```

Usage:
```
terminal network
```

Useful options:
```
-l: user
```
Image:
![telnet](images/telnet.png)

## 24. ssh

Command:

```
ssh <username>@<host>
```

Usage:
```
secure shell 
```

Useful options:
```
-q: quiet mode
```
Image:
![ssh](images/ssh.png)

## 25. ping

Command:

```
ping <ip>
```

Usage:
```
ICMP echo request
```

Useful options:
```
-I: by interface
--t: TTL
```
Image:
![ping](images/ping.png)

## 26. Redirect standard input

Command:

```
0>
```

Usage:
```
Standard input is read from the keyboard
```

## 27. Redirect standard output

Command:

```
1>
```

Usage:
```
Standard output is read from the screen
```

## 28. Redirect standard error

Command:

```
2>
```

Usage:
```
Standard error is read from the screen
```

Image:
![stderr](images/stderr.png)

## 29. /dev/null

Command:

```
>/dev/null
```

Usage:
```
garbage data storage
```

Image:
![devnull](images/devnull.png)

## 30. vnstat for traffic management

Command:

```
vnstat
```

Usage:
```
traffic management
```

Useful options:
```
-m: monthly
```
Image:
![vnstat](images/vnstat.png)