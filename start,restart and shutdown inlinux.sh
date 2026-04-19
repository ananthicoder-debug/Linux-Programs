1.Use init command to shutdown,restart and boot the system with different level
COMMAND:
      SHUTDOWN:$sudo init 0
      RESTART:$sudo init 6
      boot to single user mode:$sudo init 1
      boot to multi user miode:$sudo init 3
DESCRIPTION:Used to shutdoen,restrtand boot the system at different level

2.Create a command to schedule a system shutdown in 10 minutes
COMMAND:$sudo shutdown -h +10
DESCRIPTION:Used for scheduled shutdowen in 10 minutes

3.Use a command to immediately restart the computer
COMMAND:$sudo shutdown -r now
DESCRIPTION:Used for immediate restart

4.Create a delayed reboot command with a 5-minute delay
COMMAND:$sudo shutdown -r+5
DESCRIPTION:Used to reboot with a 5-minute delay

5.Use the appropriate command to check if a scheduled system shutdown
COMMAND:$sudo shutdown -c
DESCRIPTION:Used to check for scheduled shutdown

6.Create a command to cancel a previously scheduled system restart
COMMAND:$sudo restart -c
DESCRIPTION:Used to cancel the scheduled restart

7.Use the emergency reboot to forcefully start the system
COMMAND:$sudo reboot -f
DESCRIPTION:Used for emergency reboot to start the system

8.Use a command to initialize a system shutdown with a specific message to user
COMMAND:$sudo shutdown -h now "system will shutdown in 5 minutes"
DESCRIPTION:Used to display message before shutdown

9.Create a command to schedule an immediate shutdown of the computer
COMMAND:$sudo shutdown -h now
DESCRIPTION:Used for an immediate shut down

10.Use the command to check the current runlevel of the system
SYNTAX:$sudo reboot -f
DESCRIPTION:Used to check the current runlevel
