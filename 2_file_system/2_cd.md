# Átlépés másik könyvtárba
Ha szeretnénk megváltoztatni a jelenlegi könyvtárunkat, akkor a következőt kell írnunk a terminálunkba:
```bash
# abszolút útvonal
cd /etc
# relatív útvonal
cd ..
```

Ha abszolút útvonallat használunk, azt a gyökérkönyvtártól kell kezdenünk.

Ha szeretnénk belépni a saját, illetve más **home** könyvtárába, azt a következőképpen tehetjük meg:
```bash
# saját
cd ~
# más
cd ~other_user
```

Ha előző *cd* használat után vissza szeretnénk térni abba a könyvtárba, a következőt kell használnunk:
```bash
cd -
```
