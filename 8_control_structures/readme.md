# Vezérlési szerkezetek

Vezérlési szerkezetek a bash szkriptekben. Argumentumkezelés.

## *if*
Lásd az almappában.

## *case*
Lásd az almappában.

## *for*
Lásd az almappában.

## *while*
Lásd az almappában

## 5) argumentumok
Néhány fontos változó szkriptek futása közben.
- $#: megadott argumentumok száma
- $0: hívott szkript
- $n: n. argumentum
  - megj.: max a 9. argumentumig mehetünk.
  - *shift* paranccsal előrébb hozhatjuk az argumentumokat (viszont törlődnek az elsők). Megadhatjuk az értékét is a shiftnek.
- $@: összes paraméter a $0 nélkül
- $$: processz id

## 6) metódusok, függvények
Kinézet:
```bash
func_name() {
...
}
```
Hogyan tudjuk a függvényeket alkalmazni, és a visszatérítési értékeiket lementeni.
- *echo*: egyszerűen kiírjuk a konzolra az értéket, és a függvényt *$(...)* blokkba meghívjuk (argumentumokkal, ha van).
- *return*: meghívjuk a függvényt, majd a **$?** változó értékét lementjük egy másik változóba.

megj.: a *$?* változó minden parancs futása után megváltozik

## 7) lokális és globális változók
A függvényekben a változók alapértelmezetten globálisak. A *local* kulcsszóval ezt meg lehet változtatni.

## 8) szignálkezelés
A *trap* "csapdába ejti" a különféle szignálokat. Miután megkapta a szignált a processz, feldolgozza azt, ha nem adunk egy kilépési parancsot a *trap* utasításában, akkor fojtatódik a szkript futása.
Használat:
```bash
trap command signal(s)
```

## 9) python szkript
Értelmezőnek megadhatunk másik programot is. Ebben a példában a pythont adtuk meg.

## 10) php szkript
Akár php-ban is írhatunk szkripteket. Ebben és az előző fejezetben lévő szkript megmutatja, hogyan kérhetünk le argumentumokat, illetve terminálról hogyan kérhetünk be akármit.

## 11) argumentumok jobb kezelése
A program bemutatja, hogy hogyan kezelhetünk jobban argumentumokat. Bizonyos argumentumok értéket is várhatnak el, erre is van példa a szkriptben.
