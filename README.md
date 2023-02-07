# dotfiles

## Installation

```
git clone git@github.com:jsepia/dotfiles.git
./dotfiles/install_all.sh
liquidprompt_activate
```

## Vim

* `hjkl` remapped for colemak
* insert uses the physical `i` key
* `n` (next instance) and `N` (prev instance) use the physical `n` key

## Other setup tasks

### Mount a LUKS volume

```
#!/bin/bash
sudo echo -n
cd /
sudo losetup /dev/loop0 "/mnt/d/disk.img"
sudo cryptsetup open /dev/loop0 loop0
mount /dev/mapper/loop0 /home/${USER}/data
```

### Unmount a LUKS volume

```
#!/bin/bash
cd /
umount /home/${USER}/data
sudo cryptsetup close loop0
sudo losetup -d /dev/loop0
```
