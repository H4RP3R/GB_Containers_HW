# Смена корневой директории
mkdir testfolder
mkdir testfolder/bin
cp /bin/bash testfolder/bin/
ldd /bin/bash
mkdir testfolder/lib testfolder/lib64
cp /lib/x86_64-linux-gnu/libtinfo.so.6 ~/testfolder/lib
cp /lib/x86_64-linux-gnu/libc.so.6 ~/testfolder/lib
cp /lib64/ld-linux-x86-64.so.2 ~/testfolder/lib64/
sudo chroot testfolder/

# Изоляция сети
sudo ip netns add testns
sudo ip netns exec testns bash
ip a

# Изоляция по сети и процессам, но не по файловой системе
sudo unshare --net --pid --fork --mount-proc /bin/bash
ip a
ps aux
