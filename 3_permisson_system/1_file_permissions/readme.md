# Jogosultsági rendszerek - fájl

Egy fájl jogosultsága hasonlóan néz ki. Segítségképpen két külön sorba vettem a jogosultságokat.

s uuu ggg ooo
\- rwx rwx rwx

Jelmagyarázat:
- s: különleges fájl-e
- u: felhasználó/tulajdonos
- g: csoport
- o: más felhasználók

- r: a fájl olvasható
- w: a fájl írható (megj.: fájlt törléséhez nem kell ez a jog)
- x: a fájl futtatható

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
2___ esetén ha futtatjuk a fájlt, akkor a hozzá tartozó csoport jogosultságaival tudjuk futtatni.
4___ esetén pedig a tulajdonos jogosultságaival futtathatjuk. 
Egyik példa erre a *passwd* parancs, amivel a jelszavunkat változtathajuk meg.

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
