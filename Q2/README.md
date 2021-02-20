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
- `jobs`: Statuts des jobs dans la session shell     
`$ jobs %p`: will list all the process starting with p
	- `-n`: Stop ou Paused depuis dernière exec
	- `-r`: Seulement les jobs "Running"
	- `-s`: Seulement les jobs "Stopped"
- `kill`: Kill un job ou background process      
`kill -(signalNumber|signalName|s) [signalName] PID`   
	- `-l`: Print liste des différents signaux         

| Number | Name (short name) | Description | Used for                                                                                      |
|--------|-------------------|-------------|-----------------------------------------------------------------------------------------------|
| 0      | SIGNULL (NULL)    | Null        | Check access to pid                                                                           |
| 1      | SIGHUP (HUP)      | Hangup      | Terminate; can be trapped                                                                     |
| 2      | SIGINT (INT)      | Interrupt   | Terminate; can be trapped                                                                     |
| 3      | SIGQUIT (QUIT)    | Quit        | Terminate with core dump; can be trapped                                                      |
| 9      | SIGKILL (KILL)    | Kill        | Forced termination; cannot be trapped                                                         |
| 15     | SIGTERM (TERM)    | Terminate   | Terminate; can be trapped                                                                     |
| 24     | SIGSTOP (STOP)    | Stop        | Pause the process; cannot be trapped. This is default if signal not provided to kill command. |
| 25     | SIGTSTP (STP)     | Terminal    | Stop/pause the process; can be trapped                                                        |
| 26     | SIGCONT (CONT)    | Continue    | Run a stopped process                                                                         |          

- `nohup`: Permet de continuer à run une commande après déconnexion      
`nohup /path/to/command arg1 arg2 &`     
- `ps`: Informations sur les process courants     
	- `PID`: process ID
	- `TTY`: console name where user logged
	- `TIME`: Time of CPU running the tas
	- `CMD`: name of the command that started the task     
`ps aux`: full listing of every process
`ps -eH --forest`: Renvoi les process sous forme de hiérarchie    
Related commands: `pgrep`, `pkill`     
- `top`: Informations sur les process courants de façon interactive 
