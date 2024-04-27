# Példa zh feladatsor

## 1. Másodfokú egyenlet megoldó szkript

Írjon egy szkriptet, mely kiszámlja egy másodfokú egyenlet megoldásait (zérushelyét). A szkript értelmezője legyen bash.
A diszrkiminánst (a^2 - 4 * a *c) számolja ki egy másik szrkipt, ami python (vagy php) nyelven van megírva.
A fő szkripten ellenőrizze a diszkrimináns értékét (negatív -> nincs, 0 -> pontosan egy, pozitív -> kettő zérishely van), ez alapján kimenetként írjon annyi megoldást.
A négyzetgyök értékét és további számolásogat számolja ki a bc program segítségével.

## 2. Névhez tartozó kor és nemzetiség api

Életkor api:
```
https://api.agify.io/?name=név
```
Nemzetiség api:
```
https://api.nationalize.io/?name=név
```

Kérjen be egy nevet a 'read' program segítségével. Fent található api-k segítségével kérje le a névhez tartozó életkort és nemzetiségeket a 'curl' programmal.
A nemzetiségek közül írja ki a legnagyob valószínűségű értékkel rendelkezőt.

Segítség:
Használja a 'curl' -G és -d opcióit a kívánt névhez tartozó adatok lekérdezéséhez.
A lebegőpontos értékek vizsgálatához használhatja a 'bc' programot. pl.:
```bash
bc <<< "0.6 < 0.9" # eredményül "1"-et kapunk
```

## 3. Prím-e
Írjon egy szkriptet, ami leellenőrzi, hogy az argumentumként adott szám az prím-e. A szkript értelmezője legyen bash/python/php.
Kimenetként írjon "Igaz" vagy "Hamis" értékeket.

## 4. Random sorrend
Írjon egy python/php szrkiptet, mely az inputon beírt szavakat véletlenszerű sorrendben adja vissza.

Megjegyzés: Több megoldás is lehet:
- létrehozott szó listában véletlenszerűen cseréli meg a szavakat
- új listát hoz létre, melyben véletlenszerűen helyezi át az eredeti listából a szavakat

## 5. kamat számító
Írjon egy szkriptet, mely megmondja hogy az adott értékek mellett ki lehet-e fizetni a felvett hitelt, vagy sem.
A szrkipt argumentumként bekér három értéket: felvett hitel, kamat % (pl 1.10), havi törlesztés. A szkript értelmezője legyen bash/python/php.
A szkript kiszámolja, hogy ki tudja-e a felhasználó fizetni-e a felvett hitelt (csökkenni fog a kifizetés után), ha igen, akkor hány hónapon belül.

Segítség:
```
új_érték = (eredeti_érték * kamat) - havi_törlesztés
ha (új_érték < eredeti_érték): ki tudja fizetni
```
