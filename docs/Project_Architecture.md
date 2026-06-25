# Project_Architecture.md

# Project Architecture

## Overview

SSH Harden Automation is a Bash-based Linux administration project that automates essential OpenSSH security hardening tasks. The objective is to reduce manual configuration while preserving system integrity through automated backups and configuration inspection.

---

# Architecture

```
                    User
                      │
                      ▼
             ssh_hardening.sh
                      │
      ┌───────────────┼────────────────┐
      │               │                │
      ▼               ▼                ▼
Privilege Check   SSH Validation   Backup Creation
      │               │                │
      └───────────────┼────────────────┘
                      ▼
            Read Current Configuration
                      │
                      ▼
         Configuration Already Exists?
               │                │
             Yes               No
               │                │
      Display Settings     Apply Security
               │                │
               └──────────┬─────┘
                          ▼
                     Script Ends
```

---

# Components

## Privilege Verification

Ensures the script is executed with root privileges before modifying system configuration files.

---

## SSH Service Validation

Checks whether the OpenSSH server is installed and available.

---

## Backup Module

Creates a timestamped backup of `/etc/ssh/sshd_config` before making any modifications.

Example

```
/etc/ssh/sshd_config_20260625_183400
```

---

## Configuration Inspection

Reads current SSH settings using standard Linux utilities.

* grep
* awk

The script inspects:

* Port
* PermitRootLogin
* PasswordAuthentication
* PubkeyAuthentication

---

## Configuration Module

If no configuration exists, the script appends secure default values to the SSH configuration file.

---

# Design Goals

* Simple
* Lightweight
* Safe
* Easy to Understand
* Beginner Friendly
* Easy to Extend
