import os
import sys
from socket import gethostname
hostname = gethostname();
username = os.environ['USER']
pwd = os.getcwd()
homedir = os.path.expanduser('~')
pwd = pwd.replace(homedir, '~' , 1)
if len(pwd) > 33:
    pwd = pwd[:10] + '...' + pwd[-20:]
print "${debian_chroot:+($debian_chroot)}\\[\\033[01;32m\\]%s\\[\\033[00m\\]:\\[\\033[01;34m\\]\\W\\[\\033[00m\\]\\$ " % (username)
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
