#!/bin/bash

# Usage: https://github.com/DOMjudge/domjudge/blob/main/misc-tools/dj_make_chroot.in#L58-L87
# Add packages with -i "<apt package name>" here
/opt/domjudge/judgehost/bin/dj_make_chroot -i julia,nodejs

cd /
echo "[..] Compressing chroot"
tar -czpf /chroot.tar.gz --exclude=/chroot/tmp --exclude=/chroot/proc --exclude=/chroot/sys --exclude=/chroot/mnt --exclude=/chroot/media --exclude=/chroot/dev --one-file-system /chroot
echo "[..] Compressing judge"
tar -czpf /judgehost.tar.gz /opt/domjudge/judgehost
