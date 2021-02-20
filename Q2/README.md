# Objectifs et contenu du quiz 2

## 1. Créer, gérer et tuer des process

- `&`: Exécuter des tâches en arrière-plan (daemon)
- `ctrl+z`: Pause un process en court d'exec dans le foreground
- `ctrl+c`: Kill un process en court d'exec dans le foreground
- `bg`: Redémarre process suspendu dans l'environnement courant en tant que background process
```
$ jobs -l
[1]   6107 Running                 gedit fetch-stock-prices.py &
[2]-  6148 Running                 gnome-calculator &
[3]+  6155 Stopped                 ping cyberciti.biz
$ bg %3
```
- `fg`: Déplace un job du background au foreground 
```
$ ping www.paname.io
120 bytes from www.paname.io (32.44.120.23): icmp_req=2 ttl=3 time=54 ms
^Z (this is a "ctrl-z" command) 
$ jobs -l 
[1]+  6107 Stopped                 ping www.paname.io
$ fg %1
120 bytes from www.paname.io (32.44.120.23): icmp_req=2 ttl=3 time=54 ms
^C
```

