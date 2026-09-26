## Change Management & Implementation Document
---

# 📄 Change Request & Implementation Plan (CRIP)

| **Document ID:** | CHG-MEGHNA-2026-001 | **Date:** | September 05, 2026 |
| :--- | :--- | :--- | :--- |
| **Project Name:** | Meghna Cloud Security Enhancement | **Version:** | 1.0 |
| **Prepared By:** | Sumon Paul (System Administrator) | **Status:** | Draft / Approved |
| **Component:** | Keystone (Identity), Horizon (Dashboard) | **Environment:** | Production (3-Node Proxmox VMs) |

---

## 1. Executive Summary
This document outlines the procedure to implement **Two-Factor Authentication (2FA)** and **Role-Based Access Control (RBAC) UI updates** in the Meghna Cloud OpenStack Antelope environment. The changes will be applied to the Keystone Identity Service and Horizon Dashboard running on dedicated Virtual Machines within our 3-node Proxmox cluster.

## 2. Scope of Work
*   **Keystone Node:** Enable TOTP-based 2FA and update policy rules.
*   **Horizon Node:** Update `local_settings.py` to support MFA UI and custom RBAC policies.
*   **Database Node:** Backup MariaDB/MySQL database before schema/config changes.
*   **Impact:** Users will be required to re-authenticate. Minimal downtime (approx. 5-10 mins) during service restart.

## 3. Pre-Implementation Checklist (Backup & Safety)

> ⚠️ **Critical:** Do not proceed without completing these steps.

| Step | Action | Command / Procedure | Status |
| :--- | :--- | :--- | :--- |
| 1 | **Proxmox VM Snapshot** | Take snapshot of Keystone, Horizon, and DB VMs via Proxmox GUI. <br> *Name: `pre-2fa-update-snap`* | ☐ |
| 2 | **Keystone Config Backup** | `sudo cp /etc/keystone/keystone.conf /etc/keystone/keystone.conf.bak` | ☐ |
| 3 | **Horizon Config Backup** | `sudo cp /etc/openstack-dashboard/local_settings.py /etc/openstack-dashboard/local_settings.py.bak` | ☐ |
| 4 | **Apache Config Backup** | `sudo cp -r /etc/apache2/sites-available/ /root/apache_backup/` | ☐ |
| 5 | **Database Dump** | `mysqldump -u root -p keystone > /root/keystone_db_$(date +%F).sql` | ☐ |
| 6 | **Policy File Backup** | `sudo cp /etc/keystone/policy.json /etc/keystone/policy.json.bak` | ☐ |

## 4. Method of Procedure (MOP) - Implementation Steps

### Phase A: Keystone Configuration (Identity Node)

**Step 1: Enable 2FA in Keystone**
Edit `/etc/keystone/keystone.conf`:
```ini
[security_compliance]
multi_factor_auth_rules = password,totp
multi_factor_enabled = true
```

**Step 2: Update Policy for RBAC**
Edit `/etc/keystone/policy.json` to restrict admin actions based on new roles.
*(Insert specific JSON policy rules here)*

**Step 3: Restart Keystone Services**
```bash
sudo systemctl restart apache2
sudo systemctl status apache2
```

### Phase B: Horizon Configuration (Dashboard Node)

**Step 4: Enable MFA in Horizon**
Edit `/etc/openstack-dashboard/local_settings.py`:
```python
OPENSTACK_KEYSTONE_MULTIFACTOR_AUTHENTICATION = True
OPENSTACK_KEYSTONE_DEFAULT_ROLE = "member"
```

**Step 5: Clear Cache & Restart**
```bash
sudo python3 /usr/share/openstack-dashboard/manage.py compress
sudo systemctl restart apache2
sudo systemctl status apache2
```

## 5. Verification & Testing Plan

| Test Case | Expected Result | Actual Result | Pass/Fail |
| :--- | :--- | :--- | :--- |
| **Login with 2FA** | User should see TOTP input field after password. | | ☐ |
| **RBAC Check** | 'Member' role should NOT see "Delete Project" button. | | ☐ |
| **Service Health** | Apache2 status should be 'Active (Running)'. | | ☐ |
| **Log Check** | No critical errors in `/var/log/keystone/keystone.log`. | | ☐ |

## 6. Rollback Plan (Emergency Recovery)

If services fail to start or users cannot login, execute the following immediately:

1.  **Restore Configs:**
    ```bash
    sudo cp /etc/keystone/keystone.conf.bak /etc/keystone/keystone.conf
    sudo cp /etc/openstack-dashboard/local_settings.py.bak /etc/openstack-dashboard/local_settings.py
    ```
2.  **Restart Services:**
    ```bash
    sudo systemctl restart apache2
    ```
3.  **VM Restore (Last Resort):**
    If config restore fails, revert to Proxmox Snapshot `pre-2fa-update-snap`.

## 7. Post-Implementation Review

*   **Downtime Duration:** ______ Minutes
*   **Issues Encountered:** ________________________________________
*   **Resolution:** _______________________________________________
*   **Approved By:** ________________________ (CTO/Manager)

---

### 💡 ট্রেইনারের টিপস (Trainer's Tips for Manual Install):

1.  **Apache2 is Key:** ম্যানুয়াল ইনস্টলে Keystone এবং Horizon উভয়েই **Apache2** ওয়েব সার্ভারের মাধ্যমে চলে। তাই `systemctl restart apache2` কমান্ডটি খুব গুরুত্বপূর্ণ। কোনো কনফিগারেশন চেঞ্জ করার পর Apache রিস্টার্ট না করলে পরিবর্তন কার্যকর হবে না।
2.  **Log Files:** সমস্যা হলে নিচের লগ ফাইলগুলো চেক করুন:
    *   `/var/log/keystone/keystone.log`
    *   `/var/log/apache2/error.log`
    *   `/var/log/horizon/horizon.log`
3.  **Proxmox Snapshot:** যেহেতু আপনি Proxmox ব্যবহার করছেন, তাই কমান্ড লাইনের চেয়ে Proxmox GUI থেকে স্ন্যাপশট নেওয়া বেশি নিরাপদ এবং দ্রুত। এটি আপনার "Rollback Plan"-এর সবচেয়ে শক্তিশালী অংশ।

আপনি এই টেমপ্লেটটি ব্যবহার করে আপনার মিটিংয়ে প্রেজেন্ট করতে পারেন। এটি দেখে ম্যানেজমেন্ট বুঝবে যে আপনি খুব গোছানো এবং প্রফেশনালভাবে কাজ করছেন।