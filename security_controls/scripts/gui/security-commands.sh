#!/bin/bash
# One time script to execute commands related to security controls
# For all STIG Settings, see the checklist file in this repository. 
# Open the checklist file with stigviewer to see the latest comments and findings for each STIG settings.

#echo "Starting lockdown!" > /root/success.txt
#chmod 755 /root/security_controls/scripts/*.sh
#bash /root/security_controls/scripts/aide-acl-verify.sh
#bash /root/security_controls/scripts/aide-config.sh
#bash /root/security_controls/scripts/aide-run-date.sh
#bash /root/security_controls/scripts/aide-run-notify.sh
#bash /root/security_controls/scripts/aide-xattrs-verify.sh
#bash /root/security_controls/scripts/auditd-login-uuid-immutable.sh
#bash /root/security_controls/scripts/auditd-make-immutable.sh
#bash /root/security_controls/scripts/auditd-panic-when-fail.sh
#bash /root/security_controls/scripts/ctrl-alt-del-burst.sh
#bash /root/security_controls/scripts/ctrl-alt-del-local.sh
#bash /root/security_controls/scripts/dnf-local-gpgcheck.sh
#bash /root/security_controls/scripts/dnf-main-gpgcheck.sh
#bash /root/security_controls/scripts/gnome-automount-opening.sh
#bash /root/security_controls/scripts/gnome-automount-running.sh
#bash /root/security_controls/scripts/gnome-disable-ctrl-alt-del.sh
#bash /root/security_controls/scripts/gnome-login-restart-shutdown-buttons.sh
#bash /root/security_controls/scripts/gnome-login-user-list.sh
#bash /root/security_controls/scripts/gnome-login-warning-banner-enable.sh
#bash /root/security_controls/scripts/gnome-login-warning-banner-txt.sh
#bash /root/security_controls/scripts/gnome-screen-lock-on-smartcard-remove.sh
#bash /root/security_controls/scripts/gnome-screensaver-lock-delay.sh
#bash /root/security_controls/scripts/gnome-screensaver-lock.sh
#bash /root/security_controls/scripts/gnome-screensaver-no-user-config-idle-settings.sh
#bash /root/security_controls/scripts/gnome-screensaver-no-user-config-screensaver-settings.sh
#bash /root/security_controls/scripts/gnome-screensaver-timeout-15mins.sh
#bash /root/security_controls/scripts/grub-new-username.sh
#bash /root/security_controls/scripts/GUI-auto-login.sh
#bash /root/security_controls/scripts/login-banner.sh
#bash /root/security_controls/scripts/no-null-pass.sh
#bash /root/security_controls/scripts/sshd-permitemptypass.sh
#bash /root/security_controls/scripts/sshd-use-pam.sh
#bash /root/security_controls/scripts/sudo-invoke-user-pw.sh
#bash /root/security_controls/scripts/sudo-require-reauth-5min.sh

/root/security_controls/scripts/gui/system-lockdown.sh

firewall-cmd --set-default-zone=drop


echo "Installation successful!" > /root/success.txt
