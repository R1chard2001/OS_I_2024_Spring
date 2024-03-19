# Keresés a fájlok között
Kereséshez használhatjuk a *find* programot. Ha nem adunk neki paramétert, akkor kiírja a jelenlegi és az alkönyvtárakban lévő elemeket.
Megadhatunk különböző opciókat a fájloknak, hogy csak azokat írja ki.
Ilyen szűrők a következők:
- \-name név (reguláris kifejezés ugyanúgy használható)
- \-type típus
- \-ctime idő (Megadott órával korábban módosított fájlok)
- \-exec <parancs> {} \; (A megadott parancs futtatása találatkor. A {} utal a fájlra)

példa (az etc könyvtárban lévő összes .conf fájl megkeresése, és első két sorának kiíratása):
```bash
find /etc -name *.conf -exec head {} -n 2 \;
```
