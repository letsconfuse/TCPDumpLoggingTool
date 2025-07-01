# 📱 Analyze Network Traffic with TCPDump: Build a Logging Tool

## 📘 Overview

This project demonstrates how to use the `tcpdump` utility to **capture, analyze, and log network traffic** on a local machine. Built as part of a practical Coursera hands-on project, this tool automates network packet capture using Bash scripting, enabling ethical traffic monitoring on Linux systems.

It is useful for **penetration testers**, **network administrators**, and **security analysts** looking to understand basic network behavior, packet filtering, and passive monitoring using command-line tools.

---

## 🎯 Objectives

* Capture live network traffic using `tcpdump`
* Apply basic filters for traffic monitoring (e.g., port, protocol)
* Log captured traffic with timestamps in `.txt` format
* Include safe defaults (time and packet limits)
* Ensure real-world usability with auto-detection and cleanup

---

## 💠 Tools & Technologies Used

| Tool                       | Purpose                                  |
| -------------------------- | ---------------------------------------- |
| **tcpdump**                | Capturing network traffic from interface |
| **Bash**                   | Automating traffic capture and logging   |
| **Linux CLI**              | Operating environment                    |
| **Wireshark** *(optional)* | Further visual analysis of pcap files    |

---

## 📁 Features

* Interface auto-detection fallback if `eth0` is unavailable
* Captures only 100 packets or runs for 60 seconds (customizable)
* Logs activity to both `tcpdump_log_*.txt` and `session_activity.log`
* Automatically deletes logs older than 7 days
* Built-in ethical warning and legal responsibility disclaimer

---

## 📂 Project Structure

```
TCPDumpLoggingTool/
│
├── capture.sh             # Main Bash script to capture and log packets
├── logs/                  # Folder where all logs are saved
├── README.md              # Documentation and usage guide
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

### Step 3: Run the Script with Superuser Rights

```bash
sudo ./capture.sh
```

Captured traffic will be saved in the `logs/` directory as:

```
tcpdump_log_YYYY-MM-DD_HH-MM-SS.txt
```

---

## 🧠 Sample tcpdump Logic Inside Script

```bash
# Example from capture.sh
sudo timeout 60 tcpdump -i "$INTERFACE" -n -tttt -c 100 > "$LOG_FILE"
```

---

## 📌 Use Cases

* Network traffic logging for analysis
* Basic packet inspection for educational labs
* Quick diagnostics and connection auditing
* Automation-friendly, runs from terminal or cron

---

## 🔐 Ethical Considerations

> ⚠️ This tool is for educational and authorized use only. Never capture traffic on networks you do not own or have explicit permission to analyze. Unauthorized sniffing may violate privacy laws and organizational policies.

---

## 📜 License

This project is released under the [MIT License](LICENSE).

---

## 🙌 Credits

Created as part of the Coursera Project Network hands-on training:
**"Analyze Network Traffic with TCPDump: Build a Logging Tool"**
