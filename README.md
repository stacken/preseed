# preseed

Call them with someting like this:

```
label debian-8-preseed
  menu label debian-8-preseed
  kernel os/debian/8/debian-installer/amd64/linux
  append vga=normal initrd=os/debian/8/debian-installer/amd64/initrd.gz auto=true url=http://www.stacken.kth.se/%7ensg/preseed/debian8-nsg.txt DEBCONF_DEBUG=developer
```

`DEBCONF_DEBUG=developer` will add a lot of extra debug info to tty4 and syslog.
