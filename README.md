# Hardening scripts for Arch Linux

## Hardenings

- `file_permissions.sh`: change access mode of user files to `700` and umask to `077`
- `install_hardened_kernel.sh`: install the [hardened kernel](https://security.archlinux.org/package/linux-hardened) instead of the default kernel and add it to GRUB
- `random_MAC_addresses.sh`: configure `systemd-networkd` to change MAC address to a [random MAC at boot](https://wiki.archlinux.org/title/MAC_address_spoofing#systemd-networkd)

## How to use

Set scripts as executable

```bash
chmod +x *.sh
```

Run the scripts you need or all scripts with `./complete_hardening.sh`

## Sources

- [https://wiki.archlinux.org/title/MAC_address_spoofing](https://wiki.archlinux.org/title/MAC_address_spoofing)
- [https://lopes.id/hardening-arch-linux/](https://lopes.id/hardening-arch-linux/)
- [https://theprivacyguide1.github.io/linux_hardening_guide](https://theprivacyguide1.github.io/linux_hardening_guide)
- [https://thacoon.gitlab.io/posts/arch-linux-hardened-kernel/](https://thacoon.gitlab.io/posts/arch-linux-hardened-kernel/)
