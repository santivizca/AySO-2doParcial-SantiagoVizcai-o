2  sudo fdisk /dev/sde
    3  sudo fdisk /dev/sdd
    4  sudo mkswap /dev/sdd1
    5  sudo swapon /dev/sdd1
    6  free -h
    7  sudo fdisk /dev/sdd
    8  sudo pvcreate /dev/sdd2 /dev/sdd3 /dev/sdd5 /dev/sdd6
    9  sudo vgcreate vgadmin /dev/sdd2 /dev/sdd3
   32  sudo vgs
   33  sudo vgcreate vgDevelopers /dev/sdd5 /dev/sdd6
   34  sudo vgs
   35  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
   36  sudo lvcreate -L 1G vgDevelopers -n lvTesters
   37  sudo lvcreate -L 1G vgDevelopers -n lvDevops
   38  sudo lvcreate -L .85G vgDevelopers -n lvDevops
   39  sudo lvcreate -L .8G vgDevelopers -n lvDevops
   40  sudo lvcreate -L 2G vgadmin -n lvadmin
   41  sudo lvcreate -L 1.5G vgadmin -n lvadmin
   43  sudo lvs
   44  sudo pvs
   45   sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
   46  sudo mkfs.ext4 /dev/mapper/vgadmin-lvadmin
   48  sudo mkdir /mnt/lvDevelopers
   49  sudo mkdir /mnt/lvTesters
   50  sudo mkdir /mnt/lvDevops
   51  sudo mkdir /mnt/lvadmin
   52  sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
   53  sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
   54  sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
   55  sudo mount /dev/mapper/vgDevelopers-lvadmin /mnt/lvadmin
   56  sudo mount /dev/mapper/vgadmin-lvadmin /mnt/lvadmin
