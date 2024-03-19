# Pager-ek

Néhány alkalmazás (pl. a *man*) úgynevezett pager alkalmazásokat használ.
Ilyen alkalmazás a:
- *more* -> legkevesebb funkció
- *less*
- *most* -> legtöbb funkció

Ezek a pager-ek más fájl olvasásában is segíthetnek.
Kipróbálni a következőképpen lehet:
```bash
cat /etc/passwd | more
cat /etc/passwd | less
cat /etc/passwd | most
```

Ha szeretnénk másik alapértelmezett pager-t beállítani, akkor a következőt kell futtatni (vagy config fájlba írni):
```bash
export PAGER="most" 
```
Ha a *".bashrc* végére írjuk, akkor magunknak állítjuk be, viszont ha minden felhasználónak szeretnénk, akkor az a *"/etc/profile"* fájl végére kell írnunk.
A 2. opcióhoz root jogosultság kell.
