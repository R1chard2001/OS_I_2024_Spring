# Archiválás és tömörítés

## Tömörítés
Két programmal tömöríthetünk fájlokat:
```bash
gzip file 

bzip2 file
```

És ki is tudjuk csomakolni őket:
```bash
gunzip compressed_file

bunzip2 compressed_file
```

## Fájlok összefűzése

A *tar* program segítségével összefűzhetünk fájlokat, könyvtárakat.
```bash
tar cvf archive path
```

Hogy megnézzük mi van egy ilyen archívumban, "tesztelhetjük".
```bash
tar tvf archive
```

Kicsomagolni a következőképpen tudjuk.
```bash
tar xvf <archívum>
```

### Tömörítés

*tar* használata közben akár tömöríteni is tudunk.

*bzip*:
```bash
# archive files with bzip (*.tar.bz2)
tar cjvf archive path
```

*gzip*:
```bash
# archive files with gzip (*.tar.gz)
tar czvf archive path
```

## *rsync
*rsync* programmal biztonsági mentéseket tudunk létrehozni gépünkön, vagy akár más elérhető gépen.
Ha külső gépre mentünk, akkor az ssh protokolt használjuk.

```bash
rsync –av source destination
```
Mind a forrás és a cél útvonal is lehet másik számítógép.
Egy ilyen útvonalat a következőképpen definiálunk: felhasználó @ ip vagy domain : útvonal.
Például: myUser@127.0.1.1:~/my/secret/directory
