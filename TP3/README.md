# TP3

## BIOS

**BIOS**: Basic Input Output System, small program located on the motherboard.     
First program that starts at computer launch.     
- POST (Pre-Operating System Tests)
- Verify motherboard integrety 
- Verify peripherals 
- Param motherboard from settings
- Look for a bootable disk 
- Plug and Play 
- And add support for disks

`hdparm [option] [device]`     
- `g` geometry 
- `c` status
- `v` verbose 
      
`hdparm -C /dev/hda`

## Proc

- `/proc` state of core, OS and process.
- Only exists inside computer memory.
- Read mode only, except `/proc/sys` in write mode
- `/proc/[Number]`, infos on process
- `/proc/[Number]/cmdline`, get cmdline process
- `/proc/[Number]/cwd`, current directory of process
- `/proc/uptime`
- `/proc/sys/kernel`, infos and params about core
- `/proc/sys/net`, infos and params about network
- `/proc/partitions`
- `/proc/mount`, infos and params mounted files
- `/proc/devices`, infos and params devices
- `/proc/bus`, infos and params bus
- `/proc/version`, Unix version
- `/proc/ioports`, list I/O ports

## Hardware Abstraction Layer

**HAL**     

**daemon HAL**: Detect new devices and handled them. Warn DBUS
     
`hal-device-manager &`: gui interface

## Udev

- `udev` handled devices in `/dev`
- 