# A *dd* program
A program segítségével akár háttértárakat is tudunk leformázni, de arra is képes, hogy bizonyos méretű fájlokat tudjunk létrehozni.
```bash
# 10 mb fájl létrehozása, a fájl bitjei csupa 0-ból állnak
dd if=/dev/zero of=./zero_file bs=1024 count=10
```
Bemeneti fájlként használhatjuk a **/dev/random** illetve **/dev/urandom** "fájlokat" is.
A **/dev/null**-t "szemetesként" szoktuk használni.
