# Display Manager

Display manager manages users' login in Linux desktop.
lightdm is a lightweight display manager that used by KDE and xfce4.

This configuration of lightdm is to set auto-login in xfce4 since it does not provides a GUI interface about auto-login.
To use it , copy it into `\etc` directory

    sudo cp /path/to/this/project/Login/lightdm.conf /etc/lightdm/
