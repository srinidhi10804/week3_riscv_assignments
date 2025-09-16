## Linux commands practiced for week 3

Linux User Account Management

Creating New User Accounts:

useradd → Adds a new user to the system.

passwd → Sets or changes a user's password.

Modifying User Properties:

usermod → Modifies a user's account details (e.g., home directory, shell).

chsh → Changes the user's login shell.

usermod -d /new/home directory username → Changes a user’s home directory.

Adding Users to Groups:

usermod -aG groupname username → Adds a user to a specific group.

groupadd → Creates a new group.

Locking and Unlocking User Accounts:

usermod -L username → Locks the user account.

usermod -U username → Unlocks the user account.

Deleting User Accounts:

userdel → Deletes a user account.

userdel -r → Deletes a user account and removes the home directory.

Important Concepts:

/etc/passwd → File that contains user account information.

Home directories and shells.

User groups for access control.

File Permissions Management

Creating and Updating Files:

touch → Creates a new file or updates the timestamp of an existing file.

Changing File Ownership:

chown → Changes the ownership (user and/or group) of a file or directory.

chown -R → Recursively changes ownership for directories and files.

Modifying Permissions:

chmod → Changes the permissions of files or directories.

Numeric Notation (e.g., chmod 755 file) → Uses numbers to set permissions.

Symbolic Notation (e.g., chmod u+x file) → Uses letters (u, g, o) to set permissions.

Practical Applications:

Execute Permission: Needed to run scripts and programs (chmod +x script.sh).

Understanding Owner, Group, and Other: Permissions can be set specifically for each, e.g., read, write, execute.

Key Concepts to Remember:

Permissions Matter: Always check and ensure the correct permissions for security. Incorrect settings can cause system vulnerabilities or break functionalities.

Caution with sudo: Using sudo grants elevated privileges. Mistakes can have significant consequences, so always double-check your commands.
