# school21_level2_init

## Goals of the project
This project gives the opportunity to discover system and networkbasic commands, many of the services used on a server machine, as well as a few ideas ofscripts that can be useful for SysAdmins on a daily basis

## General instructions
Terminal commands only are used to solve all the exercices. All scripts are executable.
NB: The part 1 “Network” must be done on school’s Macs. The part 2 and3, “System” and “Scripting” must be done on a Debian virtual machine (Think about live CD debian).

## Tasks
### Network part
1. Get the list of the network interfaces of the machine without displaying any detail for these interfaces. Only the list of names.
2. Identify and display the Ethernet interface characteristics:
    (a) Identify broadcast address
    (b) Identify all IP adresses which are part of the same subnet
3. Identify the MAC address of the Wi-Fi card
4. Identifiy the default gateway in the routing table
5. Identify the IP address of the DNS that responds to the following url:slash16.org
6. Get the complete path of the file that contains the IP address of the DNS server you’re using (deduction, written in my own words)
7. Query an external DNS server on theslash16.org domain name (ie. :google8.8.8.8)
8. Find the provider of slash16.org (deduction)
9. Find the external IP of 42.fr (result of command)
10. Identify the network devices between your computer and the slash16.org domain
11. Use the output of the previous command to find the name and IP address of the device that makes the link between you (local network) and the outside world (deduction)
12. Find the IP that was assigned to you by dhcp server
13. Thanks to the previous question and the reverse DNS find the name of your host (result of command)
14. What file contains the local DNS entries? (deduction)
15. Make the intra.42.fr address reroute to 46.19.122.85 (deduction)