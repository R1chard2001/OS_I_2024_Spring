# Standart output

A *std out* átirányításához a következőket alkalmazhatjuk 
- fájl felülírása:
  - \>
  - 1\>
- fájl végére írás 
  - \>\>
  - 1\>\>

Például:
```bash
ls > test.txt
ls 1> test.txt

ls >> test.txt
ls 1>> test.txt
```

# Standard error

A hibákat a rendszer másik kimenetre írja. Ezt például C# programozáskor is megtehetjük (*Console.Error.WriteLine("HIBA");*)
Hasonlóképpen kell mint a sima *std out* esetében, viszont itt már ki kell írni a 2-es számot
```bash
## overwrite file
mkdir mydir 2> err.txt
## append file
mkdir mydir 2>> err.txt
```

Az *std err* kimenetét akár az *std out*-ra is átirányíthatjuk:
```bash
## redirect std err to std out
mkdir mydir 2>&1
```

# Standard input

Előző kettőhöz hasonlóan a bemenetet (*std in*) is átirányíthatjuk. Csak a relációs jelet kell megfordítanunk.
```bash
cat < /etc/passwd
```

# *std out* -> *std in*

Viszont ha nem szeretnénk folyamatosan fájlba írna, fájlból olvasni, akkor az egyik program kimenetét a másik program bemenetéhez is irányithatjuk.
Ezt a **'|'** karakter segítségével tehetjük meg. A *grep* segítségével megjeleníthetjük azokat a sorokat, melyek a kívánt szövegrészletet tartalmazzák.

## *grep*

A program segít bennünket soronként szűrni.

```bash
# get cpu cores
cat /proc/cpuinfo | grep processor
```

Reguláris kifejezést is használhatunk ([Mm] jelentése: M vagy m):
```bash
# get memory info
cat /proc/meminfo | grep [Mm]em
```

Ehelyett akár az *"ignore case"* kapcsolót is átadhatjuk argumentumként.
```
# get pci info about pci devices, filtered by usb devices
lspci | grep -i USB
```

Sorkezdésre is szűrhetünk:
```bash
# list lines begining with the given filter
grep /etc/passwd | grep ^r
```

Akár sorvégre is:
```bash
# or ending with the filter
grep /etc/passwd | grep /bin/bash$
```

A kettőt kombinálhatjuk, illetve átadhatunk egy kapcsolót, ami megfordítja a keresést (azokat írja ki, melyekben nincs).
Megjegyzés: ha a kezdés (*'^'*) és vég (*'$'*) karakter közé nem írunk semmit, akkor az az üres sorokat jelenti.
```bash
# ignore empty lines
grep /etc/passwd | grep -v ^$
```

## *cut*, *wc*, és egyéb szűrők

Szűrni nem csak sorokat, hanem oszlopokat is lehet. (Elválasztó vagy karakterszám alapján is.)

```bash
# first col in passwd
cat /etc/passwd | cut -d : -f 1
```

A *wc* (word count) segítségével meg tudjuk számolni a sorokat. (Lehet karaktereket, illetve szavakat is.)
```bash
# count files with r-x perm on group
ls -l /etc | cut -c 5-7 | grep r-x | wc -l
```

A *uniq* program nem írja ki egymás után lévő megegyező sorokat. Emiatt kell előtte a *sort*-al rendezni a kiíratást.
```bash
# shells in passwd
cat /etc/passwd | cut -d : -f 7 | sort | uniq
````

Alapértelmezetten a *sort* abc szerint rendez. A rendezést numerikusan is el lehet végezni:
```bash
# user ids in numerical order
cat /etc/passwd | cut -d : -f 3 | sort -n
```

Ha csak például az első néhány sort szeretnénk kiíratni:
```bash
# first 3 lines
cat /etc/passwd | head -3
head /etc/passwd -n 3
```

Vagy csak az utolsó valamennyit:
```bash
# last 5 lines
cat /etc/passwd | tail -5
tail /etc/passwd -n 5
```

Ha a parancsokat *';'*-vel válasszuk akkor egynás után lefutva kimenetük is egymás alatt lesz.
```bash
# first 3 and last 5
cat /etc/passwd | head -3; cat /etc/passwd | tail -5
```

A *head* és *tail* szűrőt kombinálva a középső n sort is kiírhatjuk.
```bash
# second 5 lines
cat /etc/passwd | head -10 | tail -5
```

Karaktercserére és törlésre a *tr* nevű program segít bennünket:
```bash
# switch characters
cat /etc/passwd | cut -d : -f 5 | grep -v ^$ | tr 'őöóűüúéá' 'ooouuuea'

# delete characters
cat /etc/passwd | cut -d : -f 5 | grep -v ^$ | tr -d 'abcde'
```

Fordított sorrenben is kiírhatjuk a sorokat.
```bash
# lines reversed
tac /etc/passwd
```

Egy szűrőt többször is alkalmazhatunk egy parancs futtatásakor.
```bash
# number of shells
cat /etc/passwd | cut -d : -f 7 | sort | uniq -c | sort -n
```

# *curl* és *wget*

A két alkalmazás hasonló, *wget*-et csak fájlok letöltésére szoktuk használni, *curl*-el viszont többet is megtudunk tenni (pl.: fájl feltöltése).

használatuk:
```bash
wget example.com

curl example.com
```
Érdemes megnézni a kézikönyvüket az alkalmazásoknak.

### Egyéb könyvtárak
Egyéb könyvtárak amiken lehet még gyakorolni:
- /proc/ioports
- /proc/filesystems
- etc...
