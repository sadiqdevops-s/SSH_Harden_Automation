# Security_Recommendations.md

# SSH Security Recommendations

The script applies several security recommendations that are widely adopted for securing OpenSSH servers.

---

## Disable Root Login

```
PermitRootLogin no
```

Why?

Direct root login is one of the most common attack vectors for brute-force attacks.

---

## Disable Password Authentication

```
PasswordAuthentication no
```

Why?

Passwords can be guessed or brute-forced.

Public-key authentication is significantly more secure.

---

## Enable Public Key Authentication

```
PubkeyAuthentication yes
```

Why?

SSH keys provide stronger authentication than passwords.

---

## Change Default SSH Port

```
Port 2222
```

Why?

Changing the default port reduces automated scanning and lowers the volume of opportunistic attacks.

> Note: Changing the SSH port does **not** replace proper authentication or firewall rules. It mainly reduces noise from automated scans.

---

## Additional Hardening Ideas

Future versions of the project may include:

* Fail2Ban
* UFW Firewall
* SELinux support
* TCP Wrappers
* MaxAuthTries
* ClientAliveInterval
* LoginGraceTime
* AllowUsers
* DenyUsers
* X11Forwarding disable
* Banner configuration
* SSH Protocol validation
