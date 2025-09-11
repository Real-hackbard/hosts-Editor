# hosts-Editor:

</br>

```ruby
Compiler    : Delphi10 Seattle, 10.1 Berlin, 10.2 Tokyo, 10.3 Rio, 10.4 Sydney, 11 Alexandria, 12 Athens
Components  : None
Discription : hosts Editor
Last Update : 09/2025
License     : Freeware
```

</br>

The computer file hosts is an operating system file that maps [hostnames](https://en.wikipedia.org/wiki/Hostname) to IP addresses. It is a [plain text](https://en.wikipedia.org/wiki/Plain_text) file. Originally a file named HOSTS.TXT was manually maintained and made available via file sharing by [Stanford Research Institute](https://en.wikipedia.org/wiki/SRI_International) for the [ARPANET](https://en.wikipedia.org/wiki/Hosts_(file)) membership, containing the hostnames and address of hosts as contributed for inclusion by member organizations. The [Domain Name System](https://en.wikipedia.org/wiki/Hosts_(file)), first described in 1983 and implemented in 1984, automated the publication process and provided instantaneous and dynamic hostname resolution in the rapidly growing network. In modern operating systems, the hosts file remains an alternative [name resolution](https://en.wikipedia.org/wiki/Name_resolution_(computer_systems)) mechanism, configurable often as part of facilities such as the [Name Service Switch](https://en.wikipedia.org/wiki/Hosts_(file)) as either the primary method or as a fallback method.

</br>

### Features:  
* Edit File List
* Delete Duplicates
* Append IP
* Search IP
* Create IP Range
* De- / Activate IPs

</br>

![hosts Editor](https://github.com/user-attachments/assets/e860edfd-ffc3-460a-82f3-b8332dc55c87)

</br>

### IP Collection:  
The IP collection contains over 3 million IP numbers that can be added by category.
* Category
  * Browsers
  * Country
  * Crypto
  * Games
  * Media
  * Microsoft
  * Miscellaneous
  * Net
  * Product
  * Provider
  * Social
  * VPN

* Integrated IP
  * Blacklist (Trackers, Spam, AntiPorn, Maleware, Ransomware, Risk Domains, Phishing)
  * Steven Black Blacklist
  * Mitchell Krog Blacklist
  * Nissar Chababy Blacklist
  * Dan Pollock
  * Peter Lowe
  * OISD Basic
  * EP Crew
  * Hash Crew
  * LV Crew
  * PP Crew
  * Hackers

</br>

### Purpose:  
The hosts file is one of several system facilities that assists in addressing network nodes in a computer network. It is a common part of an operating system's [Internet Protocol](https://en.wikipedia.org/wiki/Internet_Protocol) (IP) implementation, and serves the function of translating human-friendly hostnames into numeric protocol addresses, called [IP addresses](https://en.wikipedia.org/wiki/IP_address), that identify and locate a host in an IP network.

In some operating systems, the contents of the hosts file is used preferentially to other name resolution methods, such as the [Domain Name System](https://en.wikipedia.org/wiki/Domain_Name_System) (DNS), but many systems implement name service switches, e.g., nsswitch.conf for Linux and [Unix](https://en.wikipedia.org/wiki/Unix), to provide customization. Unlike remote DNS resolvers, the hosts file is under the direct control of the local computer's administrator.

### Content:  
The hosts file contains lines of text consisting of an IP address in the first text field followed by one or more host names. The host names map to the IPs, not vice versa. Each field is separated by white space – tabs are often preferred for historical reasons, but spaces are also used. Comment lines may be included; they are indicated by an [octothorpe](https://en.wikipedia.org/wiki/Octothorpe) (#) in the first position of such lines. Entirely blank lines in the file are ignored. For example, a typical hosts file may contain the following:  

```
127.0.0.1  localhost loopback
::1        localhost
```

This example only contains entries for the loopback addresses of the system and their host names, a typical default content of the hosts file. The example illustrates that an IP address may have multiple host names ([localhost](https://en.wikipedia.org/wiki/Localhost) and [loopback](https://en.wikipedia.org/wiki/Loopback)), and that a host name may be mapped to both IPv4 and IPv6 IP addresses, as shown on the first and second lines respectively.

### AntiVirus Programs:  
Antivirus software may interact with the hosts file to protect against malware that redirects users to fake websites, but sometimes it mistakenly flags the file as a threat, requiring you to either exclude the file from scans or adjust your antivirus's settings to allow modifications. Malware often targets the hosts file to redirect users, so legitimate modifications by users or security software are sometimes flagged. To resolve this, you may need to use a Windows administrator account to edit the file, exclude it from scans in your antivirus settings, or disable a specific protection feature within the antivirus program. 

* Protection Against Redirection:
Malicious software (malware) often modifies the hosts file to redirect users from legitimate websites to fake, malicious ones. 
* Security Features:
Some antivirus programs, like F-Secure, have specific features, such as "Protect the Hosts file," that monitor and replace a modified hosts file with a clean, default version. 
* False Positives:
If your antivirus software detects a change to the hosts file, especially if it's a legitimate change you or another legitimate program made, it may incorrectly identify the file as a malware threat.
* Use Administrator Privileges:
When making changes to the hosts file, ensure you are operating with Administrator privileges to save any edits successfully. 
* Exclude the Hosts File from Scans:
In your antivirus settings, you can typically find an option to "Exclude files and locations" or "Excluded files and locations". Add the hosts file to this exclusion list to prevent your antivirus from interfering with it. 
* Adjust Protection Features:
Some antivirus programs, like Kaspersky, have specific features like the Intrusion Protection Module that might need to be adjusted to allow the hosts file to be modified. 
* Check for Malware:
If you haven't intentionally modified the file, the antivirus detection could be a genuine alert that you have malware on your system, and you should follow the antivirus's instructions for malware removal. 

### View hosts File:
* Open the Start menu.
* In the Run box, type Notepad.exe and press Enter. Note: If you will be editing the hosts file in the next activity, you must right-click on Notepad and Run as administrator rather than press Enter.
* In Notepad, select File then Open.
* Navigate to ```C:\Windows\System32\drivers\etc```
* Change the file type to open from Text Documents (*.txt) to All Files (*.*).
* Open the hosts file.
* Read the comments in the host file. The comments begin with a # character.
* Observe the host records stored in the file. At a minimum you should find a record for 127.0.0.1 localhost.

### Edit the hosts File:
* Change the line 127.0.0.1 localhost to 127.0.0.1 localhost me.
* In Notepad, select File then Save to save the file.
* Open a command prompt.
* Type ping me and press Enter.
* Observe the results. The ping should be successful, because the name me is now defined as an alias for the loopback address 127.0.0.1.
* In Notepad, remove me from the line 127.0.0.1 localhost and then save the hosts file.
* In the command prompt, type ping me and press Enter.
* Observe the results. The ping should fail, because the name me is no longer defined as an alias for the loopback address.
* In Notepad, add a line of 8.8.8.8 googledns and then save the hosts file.
* In the command prompt, type ping googledns and press Enter.
* Observe the results. The ping should be successful, because the name googledns is now defined as an alias for 8.8.8.8.
* In Notepad, remove the line of 8.8.8.8 googledns and then save the hosts file.
* In the command prompt, type ping googledns and press Enter.
* Observe the results. The ping should fail, because the name googledns is no longer defined as an alias for 8.8.8.8.
* Close the command prompt and close Notepad to complete this activity.

