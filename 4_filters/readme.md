# Szűrők és átirányítások

Szűrők és átirányítások használata a linux terminálon belül. Hogyan tudjuk egyik parancsból a kimenetet átadni a másik parancs bemenetére.

Hogy jobban megértsük a szűrők működését, és hogy melyik program mégis mit csinált, ajánlom hogy programról programra írjuk be a parancsokat. 
Egy ilyen menet példaként:
```bash
# 1)
cat /etc/passwd

# 2)
cat /etc/passwd | cut -d : -f 7

# 3)
cat /etc/passwd | cut -d : -f 7 | sort

# 4)
cat /etc/passwd | cut -d : -f 7 | sort | uniq -c

# 5)
cat /etc/passwd | cut -d : -f 7 | sort | uniq -c | sort -n
```
