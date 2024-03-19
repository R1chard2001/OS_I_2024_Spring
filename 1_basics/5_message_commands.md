# Üzenetküldés más felhasználónak

Ha nincs engedélyezve az üzenetküldés a felhasználónknak, akkor azt ezzel kapcsolhatjuk be:
```bash
mesg 1
```
és ezzel a sorral kapcsolhatjuk ki:
```bash
mesg 0
```

Üzenetet pedig így tudunk más bejelentkezett felhasználónak írni:
```bash
write user [tty]
```
Ha több helyről is belépett a felhasználó, akkor a **tty** megadásával tudunk a kívánt konzolra üzenni.
Kilépni a **ctrl + d** vagy **ctrl + c** segtségével tudunk. Ezek közül az első megoldás a szebb.

## Összes felhasználó

Ha szaretnénk az összes felhasználónak írni valamit (pl. rendszergazdaként, hogy 10 percen belül újraindítja
a rendszert), akkor azt a kovetkező képpen lehet megoldani:
```bash
wall
```
