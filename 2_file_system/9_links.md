# Linkek
Hard link létrehozása:
```bash
ln source link
```
Ilyenkor közös inode számot kapnak a fájlok, azaz a lemezen ugyanarra a fizikai helyre mutatnak.

Soft link létrehozása:
```bash
ln -s <source> <link>
```
Itt akár másik lemezen lévő fájlt/könyvtárat is megjelölhetünk, mint forrás.
