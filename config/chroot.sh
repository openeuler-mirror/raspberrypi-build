#!/bin/bash
systemctl enable sshd
systemctl enable ntpd
systemctl enable hciuart
echo openEuler > /etc/hostname
echo "openEuler12#$" | passwd --stdin root
if [ -f /usr/share/zoneinfo/Asia/Shanghai ]; then
    if [ -f /etc/localtime ]; then
        rm -f /etc/localtime
    fi
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
fi
if [ -f /etc/rc.d/rc.local ]; then
    chmod +x /etc/rc.d/rc.local
fi