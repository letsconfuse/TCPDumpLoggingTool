# 📱 Analyze Network Traffic with TCPDump: Build a Logging Tool

## 📘 Overview

This project demonstrates how to use the `tcpdump` utility to **capture, analyze, and log network traffic** on a local machine. Built during the Coursera Project Network course titled *"Analyze Network Traffic with TCPDump: Build a Logging Tool"*, this project focuses on creating a **basic packet logging tool** that monitors traffic on a specific interface and saves it to a log file for inspection and auditing.

It is useful for **penetration testers**, **network administrators**, and **security analysts** looking to understand basic network behavior, packet filtering, and passive network monitoring techniques using command-line tools.

---

## 🎯 Objectives

* Understand and use the `tcpdump` tool to capture live network packets
* Apply basic filtering expressions to monitor specific traffic (e.g., port, protocol)
* Save captured packets to a file in `.pcap` or `.txt` format
* Build a script to automate tcpdump capture with logs
* Analyze the logs to identify incoming/outgoing IPs, ports, and traffic types

---

## 💠 Tools & Technologies Used

| Tool                       | Purpose                                     |
| -------------------------- | ------------------------------------------- |
| **tcpdump**                | Capturing network traffic from interface    |
| **Bash**                   | Scripting the automation process            |
| **Linux CLI**              | Running and monitoring network tools        |
| **Wireshark** *(optional)* | Graphical packet analysis for `.pcap` files |

---

## 📁 Features

* Captures live network packets using `tcpdump`
* Filters traffic based on port, IP, or protocol (customizable)
* Saves packet details to a readable log file (`.txt`)
* Includes timestamped filenames for organized storage
* Lightweight and terminal-based—runs on most Linux systems

---

## 📂 Project Structure

```
TCPDumpLoggingTool/
│
├── capture.sh           # Main Bash script to run tcpdump and save logs
├── logs/                # Folder to store saved log or pcap files
├── README.md            # Documentation and usage guide
```

---

## ▶️ How to Run

### Step 1: Clone the Repository

```bash
git clone https://github.com/letsconfuse/TCPDumpLoggingTool.git
cd TCPDumpLoggingTool
```

### Step 2: Make the Script Executable

```bash
chmod +x capture.sh
```

### Step 3: Run the Script (requires sudo)

```bash
sudo ./capture.sh
```

This will start capturing packets on the default interface (`eth0` or `wlan0`) and save them to a log file like:

```
logs/tcpdump_log_2025-07-01_10-30-00.txt
```

---

## 🧠 Sample tcpdump Commands Used

```bash
tcpdump -i any -n -tttt
tcpdump -i eth0 port 80
tcpdump -i wlan0 -w logs/network.pcap
```

---

## 📌 Use Cases

* Network monitoring and traffic logging
* Basic forensic and incident response
* Security audit or testing setup
* Packet inspection for malware or anomaly detection

---

## 🔐 Ethical Considerations

> This tool is built strictly for **educational** and **authorized network analysis only**. Do not use it to capture traffic from networks you do not own or have permission to monitor.

---

## 📜 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 🙌 Credits

This project was inspired and developed as part of the **Coursera Project Network course:**
**"Analyze Network Traffic with TCPDump: Build a Logging Tool"**
Instructor: *\[Add instructor if applicable]*
