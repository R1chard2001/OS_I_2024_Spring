# Jogosultsági rendszerek - könyvtár

Egy könyvtér jogosultsága hasonlóan néz ki. Segítségképpen két külön sorba vettem a jogosultságokat.

s uuu ggg ooo
\- rwx rwx rwx

Jelmagyarázat:
- s: különleges fájl-e (itt ez mindig 'd')
- u: felhasználó/tulajdonos
- g: csoport
- o: más felhasználók

- r: a könyvtár tartalma olvasható
- w: a könyvtár tartalma írható (fájlt lehet törölni, létrehozni a könyvtárban)
- x: be lehet lépni a könyvtárba

## *chmod*

A *chmod* parancs segítségével megváltoztathatjuk a fájlunk, illetve könyvtárunk jogosultságait.
Első paraméterül 3 vagy 4 számjegyet fogad el 0 és 7 között.
A végső számot a jogosultságokhoz hozzárendel egészek összeadásával kapjuk meg:
- r -> 4
- w -> 2
- x -> 1

Példa a használatra:
```bash
chmod 755 my_file
```

### Különleges jogosultságok

Ha *chmod* használata közben 4 számjegyű számot adunk meg, akkor ezeket állíthatjuk be.
Ha 1777-t adunk egy könyvár jogosultságának, akkor a felhasználók létre tudnak hozni benne fájlokat, viszont csak a sajátjukat tudják törölni, illetve módosítani
Egyik példa erre a */tmp* könyvtár.

### Karakteres használat

A parancsot lehet számjegyek nélkül is használni.
```bash
chmod o=rx my_file
```

Karakteres használatkor a következőket használhatjuk:
- kategória megadása:
  - u -> tulajdonos
  - g -> csoport
  - o -> más felhasználó
- jogosultság:
  - r -> olvasás
  - w -> írás
  - x -> futtatás
- operátor a kategória és a jogosultság között:
  - \+ -> jogosultság hozzáadása
  - \- -> elvétele
  - = -> pontos megadása
