#!/bin/bash -uex

chroot /mnt/gentoo /bin/bash -uex <<'EOF'
emerge -vq "=virtual/linux-sources-1"

emerge -vq  ">=app-emulation/virtualbox-guest-additions-5.1.8" --autounmask-write
etc-update --automode -5
emerge -vq  ">=app-emulation/virtualbox-guest-additions-5.1.8"

rc-update add virtualbox-guest-additions default
EOF
