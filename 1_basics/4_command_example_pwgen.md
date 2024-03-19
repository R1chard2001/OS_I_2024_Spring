# Programok futtatása
Futtassunk egy olyan programot, amit jelszavak generálására szoktak használni.
```bash
pwgen
```
Ha szeretnénk 7 darab 10 karakterből álló jelszót generálni akkor a következőt kell futtatni:
```bash
pwgen 10 7
```
Argumentumként mást is átathatunk. Például a következő parancsban az *-s* és *-y* kapcsolót adjuk át.
```bash
pwgen 10 7 -sy
# ugyan az mint
pwgen 10 7 -s -y
```
Természetesen más sorrendben is megadhatjuk a paramétereket.
