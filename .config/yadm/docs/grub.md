# Grub

## Updating Grub
Due to my system's configuration, when updating Grub I need to use the
`--removable` flag. I believe this is due to secure boot not being enabled.

To update grub post-install I need to run:
```bash
sudo grub-install --target x86_64-efi --efi-directory /boot --removable
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

Of course the paths will vary depending on your system's configuration, but
this is as of now as I installed via `archinstall`, which as the grub efi file
at `/boot/EFI/BOOT/BOOTX64.EFI`.
