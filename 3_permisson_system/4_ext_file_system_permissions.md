# Fájlrendszer jogosultságai

A fájlrendszernek is vannak külön jogosultságai. Ezeket a *lsattr* parancs segítségével ki is listázhatjuk.
```bash
lsattr file
```

Módosításhoz a *chattr* parancsot alkalmazhatjuk. Természetesen root jogosultság kell a futtatásához.
```bash
# immutability
chattr +i file

chattr -i file
```
Egyéb jogosultságok is vannak. Ezeket az *ext4* fájlrendszer kézikönyvében is megtalálhatjuk.
```bash
man ext4
```
