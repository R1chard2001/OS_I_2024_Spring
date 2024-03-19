# Shell szkript példák
A szkripteket szövegszerkesztő segítségével át lehet tekinteni, meg lehet nézni a szintaxist.
Futtatni pedig a *./relative/path* vagy */absolute/path* megadásával lehet (természetesen kicserélni az útvonalakat).

## 1) hello word
Egyszerű szkript, csak kiírja a "Hello world!" szöveget. Első sora definiálja, melyik program fogja értelmezni a fájlban lévő szöveget.

## 2) mai dátum
Kiírja a mai hét napját az alapértelmezett nyelven. Változók kezelését lehet megtalálni benne.

## 3) hosszú vagy többsoros szöveg kiíratása
Ha nagyon hosszú vagy többsörös szöveget szeretnénk kiíratni, akkor a *cat* programot használhatjuk.
```bash
cat << EOF
...
EOF
```
**EOF** helyett más szót is használhatunk (pl.: VEGE), arra kell figyelni, hogy a szövegünkben be jelenjen meg.

## 4) konfigurációs fájl használata
A szkript mellett megtalálható egy konfigurációs fájl is. Ha szeretnénk egy alapértelmezést adni a programunknak egy ilyen fájlt létrehozhatunk melléje.
Akár parancsokat is futtathatunk benne, melyek a "beimportáláskor" lefutnak.

## 5) bejelentkezések megszámlálása
A rendszernek is vannak alapértelmezett változói. Az egyik ilyen a **$USER**, mely a jelenlegi felhasználó felhasználónevét tartalmazza.

## 6) bemente kérése futás közben
A *read* segítségével kérhetünk a felhasználótól adatokat a terminálról.

## 7) JSON formátumú fájl/szöveg feldolgozása
A programban található példák egy előre elkésztett JSON formátumú fájl feldolgozásához. A program amit használ az a *jq*.
ENTER segítségével léphetünk a következő példára.
