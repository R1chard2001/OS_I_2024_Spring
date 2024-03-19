# Parancsok ütemezése

## *crontab*

Segítségével ütemezni tudunk parancsok futtatását. Ha amegadott feltéttel teljesül, akkor lefut a megadott parancs.
Módosítás:
```bash
crontab -e
# times can be used with * */n m/n (m must be smaller) n1,...,nn n1-n2
```
Időpontokat megadhatunk következő féleképpen:
- \*: mindig igaz
- \*/n: ha a szám osztható n-el
- m/n: ha a számot eloszva m-et kapunk maradékol. (m < n)
- n1,...,nx: ha a szám megegyezik a megadottal
- n1-n2: ha a szám az intervallumba esik

Speciális eset is lehet:
- @reboot: minden újrainduláskor

A taszkok kilistázása:
```bash
crontab -l
```

A taszk fájl törlése:
```bash
crontab -r
```

## *at*

Az *at* program hasonlít a *crontab*-hez, viszont csak 1x fut le a kívánt parancs/parancsok.
Az időpont argumentumként kéri, a parancsokat az **std in**-re.
```bash
# e.g.
at now +10 minutes

at 5:36
```

A megadott munkákat kilistázhatjuk:
```bash
at -l
```

És törölni is tudunk (jid = job id):
```bash
at -r jid
```
