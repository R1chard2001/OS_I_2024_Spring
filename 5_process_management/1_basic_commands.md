# Processz kezelés

Futó processzek kilistázásához a *ps* nevezetű programot használjuk.
```bash
ps aux
```

A processzeket fa formában is meg lehet jeleníteni (szülő - gyerek formában).
```bash
# list process names in a tree format
pstree
```

Szűrőket is alkalmazhatunk kilistázás után:
```bash
# list processes of the user root
ps aux | grep ^root
```

Ha egy programot háttérben szeretnénk elindítani, azt a *'&'* karakterrel tudjuk megoldani.
```bash
cat &
```

Futó programot **ctrl + z** bilentyűkombinációal tudjuk háttérbe helyezni.
Háttérben futó vagy megállított programot az *fg* segítségével tudjuk előtérbe hozni.
```bash
fg
```

Szignálokat is küldhetünk a futó programjainknak. (pid = process id) 
Így akár ha valamelyik program megakad, akkor be tudjuk zárni "távolról".
```bash
kill pid
# default signal is SIGTERM
kill -s SIGKILL pid
```

Ismétlés: feladatkezelő alkalmazások
- top
- htop
- ...

Processzeknek futási prioritást is megadhatunk a *nice* segítségével.
```bash
nice –n priority command
```
Minéle kevesebb a priotitás száma, annál gyakrabban fut. A szám -20 és 20 közötti lehet.
A negatív számokat csak root jogosultsággal lehet használni.

Futó processzt prioritását is meg tudjuk változtatni a *renice*-al.
```bash
renice -n priority -p pid
```
