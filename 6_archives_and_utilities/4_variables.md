# Változók kezelése

## Változó deklarálása

```bash
a=15
```

## Változóba mentett érték lekérdezése

```bash
echo $a
```
Megjegyzés: változókban a parancsokat akár szövegesen is le tudjuk menteni, majd későb csak a változóra hivatkozva futtatni.
```bash
b=ls
$b
```

## Változó törlése

```bash
unset a
```

## Számolás a retminálon belül

```bash
echo $((5 + 6))
```
Ha számolni szeretnénk akkor *$((kifejezés))* formában tehetjük meg azt.
Akár változókat is beletehetünk a kifejezésünkbe.

pl. *$i* növelése 1-el:
```bash
i=$(($i+1)) -> add 1 to i
```

## Parancs kimenetének lementése

Hasonlóképpen kimenetet is lementhetünk, így nem kell a kívánt értékeket fájlba elmentenünk.
```bash
b=$(ls)
```

## néhány fontos változó

- $BASH: Bash útvonala
- $BASH_VERSION: Bash verziója
- $HOME: Jelenlegi felhasználó home könyvtára
- $PWD: jelenlegi munkakönyvtár.
- $SHELL: Alapértelmezett shell útvonala.
- $USER: Felhasználónév a jelenlegi felhasználónak.
- $UID: A felhasználó id-je a jelenlegi felhasználónak.
- $$: Jelenleg futó alkalmazás processz id-ja.
- $?: Kilépési státusz a legutóbb futott programnak
