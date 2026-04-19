Creating and Managing User Groups and Permissions in Linux (with sudo)

1. Create a user group called CSEstudents, rename it to engineers, add 10 users, rename 5 users, remove yourself, and delete the group

        Command Used: sudo groupadd
        Use: Creates a new user group on the system.

        Command Used:  sudo groupmod -n
        Use: Renames an existing user group.
        Syntax: sudo groupmod -n newgroup oldgroup

        Command Used: sudo useradd -G
        Use: Creates a new user and adds them to one or more supplementary groups
             (i.e., groups other than their primary group).
        Syntax: sudo useradd -G groupname username

        Command Used: sudo usermod -l
        Use: It renames a user account by changing the username (login name) from the old name to a new one.
        Syntax: sudo usermod -l new_username old_username

        Command Used: sudo groupdel
        Use: It permanently deletes a user group from the system.
        Syntax: sudo groupdel groupname

        Command Used: sudo gpasswd -d $(whoami) engineers
        Use:
                gpasswd   ----> Used to administer group membership, such as adding or removing users.
                -d        ----> Deletes (removes) a user from a group.
                $(whoami) ----> A command substitution that dynamically returns your current username.
                groupname ----> The name of the group you want to remove yourself from.


        Commands:
                sudo groupadd CSEstudents
                sudo groupmod -n engineers CSEstudents

                sudo useradd -G engineers user1
                sudo useradd -G engineers user2
                sudo useradd -G engineers user3
                sudo useradd -G engineers user4
                sudo useradd -G engineers user5
                sudo useradd -G engineers user6
                sudo useradd -G engineers user7
                sudo useradd -G engineers user8
                sudo useradd -G engineers user9
                sudo useradd -G engineers user10

                sudo usermod -l newuser1 user1
                sudo usermod -l newuser2 user2
                sudo usermod -l newuser3 user3
                sudo usermod -l newuser4 user4
                sudo usermod -l newuser5 user5

                sudo gpasswd -d $(whoami) engineers
                sudo groupdel engineers

2. Set password and password expiry for a user

        Command Used: sudo chage -E 2025-04-30 username
        Use: It sets the expiration date for the specified user account.
             After 2025-04-30, the user will no longer be able to log in to the system.
        Syntax: sudo chage -E YYYY-MM-DD username

        Command Used: sudo passwd
        Use: Prompts you to enter and confirm a new password for the specified user account.
        Syntax: sudo passwd username

        Commands:
          sudo passwd user1
          sudo chage -E 2025-04-30 username

3. Create a new user account named John with home directory /home/John

        Command Used: sudo useradd -m -d /home/John John
        Use:    useradd       --> Command to create a new user account.
                -m            --> Creates a home directory for the user if it doesn’t already exist.
                -d /home/John --> Specifies the path for the user's home directory.
                John          --> The username for the new account.

        Command:
          sudo useradd -m -d /home/John John

4. Create a new group named developers

        Command Used: sudo groupadd developers
        Use: It creates a new user group called developers.
        This group can be used to organize users who share the same permissions or roles — e.g., software developers on a system.
        Command:
          sudo groupadd developers

5. Create a new user Alice and add to developers group

        Command Used: sudo useradd Alice -m -G developers
        Use:    useradd       --> Command to create a new user account.
                Alice         --> The username of the new user.
                -m            --> Creates a home directory for the user (/home/Alice).
                -G developers --> Adds the user to the supplementary group developers.

        Commands:
          sudo useradd Alice -m -G developers


6. Change ownership of file.txt to user John and group developers

        Command Used: sudo chown John:developers file.txt
        Use:    chown           = Stands for "change owner" – used to change the ownership of a file or directory.
                John:developers = John becomes the new owner (user), and developers becomes the new group.
                file.txt        = The file whose ownership is being changed.
        Command:
          sudo chown John:developers file.txt

7. Create a user guest and set default permissions on home directory

        Command Used: sudo chmod 555 /home/guest
        Use:    chmod           Stands for "change mode" – used to set file or directory permissions.
                555             Sets the permission to read and execute only for owner, group, and others. No write access.
                /home/guest     The directory whose permissions are being modified.

        Commands:
          sudo useradd  guest
          sudo passwrd guest
          sudo chmod 555 /home/guest

8. Display groups of a user named jane

        Command Used:
        Use:
        Command:
          id jane

9. Change group ownership of config.conf to admin

        Command Used:
        Use:
        Command:
          sudo chgrp admin config.conf

10. Grant user manager write access to a file using setfacl

        Command Used:
        Use:
        Command:
          sudo setfacl -m u:manager:w file.txt
