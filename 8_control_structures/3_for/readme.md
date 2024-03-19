# *for*
Kinézete:
```bash
for var in list
do
...
done

for var in list; do
...
done
```
A for

## 1) konfigurációs fájlok
Paraméterül adhatunk útvonalat (/etc/*.conf). Így akár fájlokon és könyvtárakon keresztül végigiterálhatunk.

## 2) nevek kiíratása
Szöveget is átathatunk a *for*-nak, így szóközökkel elválasztva megy végig a szavakon.

## 3) lista
A *seq* nevezetű paranccsal generálhatunk egy egyszerű "listát". 
Használata:
```bash
seq start difference end
```
A **start**-tól megy a számolás **end**-ig, mindig **difference**-et hozzáadva

## 4) *break*
Ciklusokban *break*-et is használhatunk, ha ki szeretnénk lépni belőlük.

## 5) *continue*
Ugyanígy a *continue* is működik a *for*-ban, jelenlegi ciklust befejezve a következő elemmel folytatva.
