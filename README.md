### README

# **BatScriptsToolkit**

This project contains batch scripts designed for specific operations on Windows systems. These scripts include a timer limited to a specific date, which, upon reaching the set date, performs an operation on the system. Please ensure that you fully understand the purpose of these scripts before executing them.

---

## **Scripts**

### 1. **ShutdownTimer**

This script automatically calculates the date and, after 14 days from execution, shuts down the system.

- **Functionality:**

  - Retrieves the current date.
  - Adds 14 days to the current date.
  - If the current date reaches the set date, it forcefully shuts down the system.

- **Note:**
  - This script is designed for testing and specific purposes. Use it with caution.

### 2. **ZeroOut**

This script is similar to the first one but significantly more dangerous. If the current date reaches the set date, it deletes critical system files (such as Windows files, user files, etc.).

- **Functionality:**

  - Calculates the current date.
  - After 14 days from execution, if the date reaches the set limit, it deletes important system files and folders (C:\Windows, C:\Users, C:\Program Files, etc.).

- **Warning:**
  - This script permanently removes data from the system.
  - **Make a complete backup of your data before executing this script.**
  - This script can cause serious damage to your system.

---

## **How to Use**

1. Save the script file in the desired location.
2. Run the script file (make sure to run it as Administrator).
3. The script will automatically calculate the date and execute the corresponding operations.

---

## **Recommendations**

- **Backup:** Always create a full backup of your system and data before running any script.
- **Responsible Usage:** These scripts can lead to data loss or system damage. Only execute them under specific conditions with full awareness of the risks.

---

## **Risks and Warnings**

These scripts can significantly impact your system and result in data loss. The responsibility for using them lies entirely with the user.

---

**Note:** These scripts are intended for specific and experimental purposes. Improper use may result in data loss and system failure.
