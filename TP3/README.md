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