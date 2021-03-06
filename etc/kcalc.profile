# Firejail profile for kcalc
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/kcalc.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

disable-mnt
private
private-bin kcalc
private-dev
# private-lib - problems on Arch
private-tmp

noexec ${HOME}
noexec /tmp
