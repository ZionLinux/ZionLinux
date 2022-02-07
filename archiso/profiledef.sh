#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="zionlinux"
iso_label="ZION_1.5.3"
iso_publisher="The Zion Team"
iso_application="Zion Linux LiveCD"
iso_version="1.5.3"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  #["/usr/bin/calamares"]="0:0:755"
  #["/usr/bin/calamares_polkit"]="0:0:755"
  ["/etc/gshadow"]="0:0:0400"
  ["/etc/sudoers.d"]="0:0:750"
)
