# archinstaller
This bash script makes Arch Linux is easier and a lot more faster with better mirrors and parallel downloads 
- uses archinstall for most of installation related stuff
- clean and easy to use
## Usage
 1) Boot into any Arch Linux image
 2) run the commands(optional)

   `pacman-key --init`

   `pacman-key --populate archlinux`

3) Install git and clone this repo
`pacman -Sy`

`pacman -S git`
 
`git clone https://github.com/AnshhSingh/archinstaller/`

4) Run the script!

`cd archinstall`

`chmod +x arch.sh`

`./arch.sh`

5) The arch install script will guide you with rest of the process 
