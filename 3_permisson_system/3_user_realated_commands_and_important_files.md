# Felhasználókhoz kapcsolódó parancsok
## *id*

Jelenlegi felhasználó információi. Tartalmazza a felhasználónevet, id-jét, fő csoportját, illetve egyéb csoportjait. 

## umask

Alapértelmezett fájl létrehozási maszk beállítása. Azt kell megadni, amit nem szeretnénk automatikusan megadni.
Használata:
```bash
umask 0022
```

## *chown*

Fájl tulajdonosának megváltoztatása. Csak root jogosultsággal használható.
```bash
chown user file
```

## *chgrp*

A fájl csoportjának megváltoztatása. Szintén csak root jogosultsággal futtatható.
```bash
chgrp group file
```

## Felhasználó kezelés

Hozzáadás:
- *adduser* -> felhasználóbarátibb
- *useradd*

Módosítás (pl.: csoport hozzáadása)
- *usermod*

Törlés:
- *deluser* -> törli a hozzá tartó fájlokat, és az információkat
- *userdel*

## Csoport kezelés

Hozzáadás:
- *addgroup*
- *groupadd*

Módosítás:
- *groupmod*

Törlés
- *delgroup*
- *groupdel*

Megjegyzés: a felhasználót illetve csoportot is lehet csak egy egyszerű szövegkezelővel módosítani.
 
## Néhány fontos fájl
- /etc/passwd: felhasználó főbb adatai
- /etc/shadow: felhasználók jelszó hash-ét tartalmazó fájl
- /etc/group: csoportok főbb adatai
