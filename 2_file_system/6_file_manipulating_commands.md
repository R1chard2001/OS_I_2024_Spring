# Fájlmanipulációs parancsok

## Fájl mozgatása illetve átnevezése

```bash
mv path_from path_to
```

## Fájl másolása

```bash
cp path_from path_to
```

## Fájl létrehozása

```bash
touch file
```
Ezzel a paranccsal a fájlhoz tartozó dátumokat is módosíthatjuk.

## Fájl törlése
```bash
rm file
```

## Könyvtár létrehozása
```bash
mkdir path
```

Ha nem létezik a kívánt könyvtár szülőkönyvtára, ahhoz nem kell azt is külön parancsban létrehozni,
hanem a *-p* kapcsoló segítségével az is egyszerre létrehozódik:
```bash
mkdir path -p
```

## Könyvtár törlése
```bash
rmdir path
```
Megjegyzés: a könyvtárnak üresnek kell lennie!
Ha szeretnénk egy nem üres könyvtárat és a benne lévő gyerek elemeket is törölni rekurzívan:
```bash
rm -r path
```

## Reguláris kifejezések használata
A név illetve útvonal megadásakor használhatunk reguláris kifejezéseket is:
- * - bármilyen karakter bármennyiszer (akár egyszer sem)
- ? – bármilyen karakter egyszer
- [an] – a vagy n (akármennyi karakter beírható a []-ba)
- [^an] – nem a vagy n
- {0..5} – 1 karakter 0-5 között (szám helyett lehet betű is)
- {0..6..2} – 1 karakter 0-5 között, 2 lépésenként

## Fájl tartalmának kiíratása
```bash
cat file
# több fájl is megadható
cat file1 file2 ...
```

## Fájl típusának megjelenítése
```bash
file my_file
```
