# Vlc Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Maulik@ubuntu-server:~/Vlc$ ./01-identify.sh
================================================================================
                   Vlc AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Maulik
Home Directory:     /home/Maulik
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 17:07:16 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Maulik@ubuntu-server:~/Vlc$ ./02-packages.sh
================================================================================
                   Vlc AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: vlc is INSTALLED on this Debian/Ubuntu system.
Version: 3.0.18-1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Vlc: A free and open-source media player that promotes freedom of choice and flexibility.
 - Firefox: A free and open-source web browser that advocates for online privacy and security.
 - LibreOffice: A free and open-source office suite that supports open document formats and community-driven development.
 - GIMP: A free and open-source raster graphics editor that demonstrates the power of collaborative software development.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Maulik@ubuntu-server:~/Vlc$ ./03-auditor.sh
================================================================================
                   Vlc AUDIT - DIRECTORY AUDITOR               
================================================================================
/etc
total 1240
-rw-r--r-- 1 root root  3136 Mar 10 14:55 adduser.conf
-rw-r--r-- 1 root root  1824 Mar 10 14:55 aliases
... 
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Maulik@ubuntu-server:~/Vlc$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Vlc AUDIT - LOG FILE ANALYZER              
================================================================================
Target Log: /var/log/syslog
Keyword: error
Total occurrences of 'error': 10
Mar 31 16:45:01 ubuntu-server CRON[1234]: error: failed to execute
Mar 31 16:46:01 ubuntu-server CRON[1235]: error: failed to execute
... 
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Maulik@ubuntu-server:~/Vlc$ ./05-manifesto.sh
================================================================================
                   Vlc AUDIT - MANIFESTO GENERATOR            
================================================================================
Please answer the following questions to generate your open-source manifesto:
My name is Maulik, and I believe in the power of open-source software. My favorite project is Vlc, which embodies the spirit of collaboration and community. I value freedom, as it allows me to contribute to and learn from the global open-source community.
Manifesto saved to Maulik.txt
================================================================================
```