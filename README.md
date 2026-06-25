# 🔐 SSH Harden Automation

A Bash automation script that secures an OpenSSH server by applying essential SSH hardening techniques automatically.

This project demonstrates Linux administration, Bash scripting, configuration management, and security automation.

---

## Features

- Verify root privileges
- Verify SSH service installation
- Create timestamped backup of `sshd_config`
- Read existing SSH configuration
- Display current SSH security settings
- Apply secure SSH defaults when configuration is absent
- Preserve original configuration through automatic backups

---

## Security Controls Applied

| Configuration | Value |
|--------------|-------|
| SSH Port | 2222 |
| PermitRootLogin | No |
| PasswordAuthentication | No |
| PubkeyAuthentication | Yes |

These changes help reduce the attack surface and encourage key-based authentication.

---

## Project Workflow

```
Start
   │
   ▼
Check Root User
   │
   ▼
Check SSH Installation
   │
   ▼
Backup sshd_config
   │
   ▼
Read Existing Configuration
   │
   ▼
Configuration Found?
      │
 ┌────┴─────┐
 │          │
Yes         No
 │          │
 │      Apply Security
 │      Configuration
 │
 └──────┬───────
        ▼
      Finished
```

---

## Requirements

- Linux Distribution
- Bash
- OpenSSH Server
- systemd

---

## Installation

Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/SSH_Harden_Automation.git
```

Enter the project directory

```bash
cd SSH_Harden_Automation
```

Make the script executable

```bash
chmod +x ssh_hardening.sh
```

Run the script

```bash
sudo ./ssh_hardening.sh
```

---

## Example Output

```text
Backup successful
Location:
/etc/ssh/sshd_config_20260625_183245

Current Port: 22
PermitRootLogin: yes
PasswordAuthentication: yes
PubkeyAuthentication: yes
```

---

## Project Structure

```
SSH_Harden_Automation/
│
├── README.md
├── LICENSE
├── .gitignore
├── ssh_hardening.sh
├── docs/
├── screenshots/
└── assets/
```

---

## Technologies Used

- Bash
- Linux
- OpenSSH
- systemctl
- grep
- awk
- tee

---

## Linux Concepts Demonstrated

- Shell Scripting
- Conditional Statements
- Variables
- File Backup Automation
- Linux Security
- SSH Administration
- Configuration Parsing
- Text Processing
- Linux Services
- System Administration

---

## Future Improvements

- Interactive menu
- Rollback functionality
- Automatic SSH restart
- SSH configuration validation
- Dry-run mode
- Colored terminal output
- Logging
- Firewall integration
- Custom SSH port selection
- Support for Ubuntu, Debian, RHEL, Rocky Linux and AlmaLinux

---

## Screenshots

### Running Script

Add a terminal screenshot here.

### Backup Creation

Add a backup screenshot here.

### Configuration Verification

Add a verification screenshot here.

---

## Educational Purpose

This project was developed to strengthen practical Linux administration and Bash scripting skills by automating common SSH hardening tasks while following system administration best practices.

---

## Author

**Mohd Sadiq**

Linux • Networking • Windows Server • Cloud • Bash Automation

GitHub: https://github.com/YOUR_USERNAME

LinkedIn: https://linkedin.com/in/YOUR_LINKEDIN

---

## License

This project is licensed under the MIT License.