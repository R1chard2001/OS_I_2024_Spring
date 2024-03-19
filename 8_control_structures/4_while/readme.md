# *while*

Kinézete:
```bash
while condition
do
...
done

while condition; do
...
done
```

## 1) 10-ig iteráló
Szám megadása után addig iterál, amíg a számot növelve el nem érünk 10-et.

A *while* ciklus **condition** részét lehet úgy használni, mintha egy *if* lenne.

## 2) olvass, míg
A **condition** rész helyére a *read* parancsot is írhatunk. Ha szeretnénk, akkor a ciklus törzsébe rakhatunk egy *break*-et, hogy kilépjen belőle.

## 3) sajátkészítésű szűrő
A *read*-nél kiléphatünk úgy is a ciklusból, hogy a **ctrl + d** billentyűkombinációt lenyomjuk. A szkript kicseréli a kisbetűket nagybetűkre.
