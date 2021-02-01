### Question1 : Quelle commande doit être utilisée pour modifier les paramètres de disques durs IDE ?
`hdparm`

### Question2 : Ou se trouve, dans le système de fichiers, l'information sur les processus en cours d'exécution ?
`/proc/`

### Question3 : Comment déterminer depuis combien de temps tourne un système ?
`cat /proc/uptime` or `uptime`

### Question4 : Comment déterminer si une IRQ est utilisé par plusieurs devices ?
`/proc/interrupts`

### Question5 : Comment déterminer si votre système comporte plusieurs CPU ?
`/proc/cpuinfo`

### Question6 : Le méchanisme ISA DMA utilise-t-il du temps ou des ressources CPU ?
DMA: Direct access memory    
uses Bus     

### Question7 : Comment afficher tous les devices PCI ?
`/proc/bus/pci/devices`

### Question8 : Quel est le nom du fichier correspondant au port série qui, sous DOS ou MS Windows, est appelé COM3 ?
`dev/ttys2`

### Question9 : Quelle commande AT vous permet de composer un numéro ?
`atd`

### Question10 : Comment vous assurez-vous que votre système est capable de démarrer sur un disque SCSI ?


### Question11 : Comment vérifier qu'un disque USB a bien été détecté ?
`lsusb`

### Question12 : Quelle commande vous permet de vérifier qu'un pilote a bien été installé pour un device USB ?
`usbmodules`

### Question13 : Ou sont listés les devices USB dans le système de fichiers ?
In `/dev`