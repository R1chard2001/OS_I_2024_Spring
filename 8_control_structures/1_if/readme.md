# Vezérlési szerkezetek - if
Kinézete:
```bash
if [ expression ]
then
...
fi
```

```bash
if [ expression ]; then

fi
```

```bash
if [ expression ]
then
...
elif [ expression ]
then
...
fi
```

```bash
if [ expression ]
then
...
else
...
fi
```

Az **else** ágnak a legvégén kell lennie és bármennyi **elif** ág lehet. A **then** kulcsszó a kifejezés után is lehet, *';'*-vel elválasztva.

## 1) root-e
A szkript megnézi, hogy a felhasználó a root felhasználó-e.

## 2) négyzet kerület- és területszámolás
Egy javított szkript, mej megnézi, hogy a megadott szám kisebb-e vagy egyenlő 0-val.

## 3) négyzet kerület- és területszámolás v2
Negatív számra illetve külön 0-ra is kiír egy üzenetet a program.

## 4) fájl ellenőrzés
A szkript megnézi, hogy létezik-e a megadott fájl, ha nem létrehozza és beleírja a felhasználó nevét.
Ha létezik akkor kiírja a fájl tartalmát.
