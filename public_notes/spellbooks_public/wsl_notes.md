# wsl

## wsl - Configuration

### wsl - Configuration - Reference

https://learn.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig

> within .wslconfig located at '%UserProfile%'

- swapFile path %USERPROFILE%\AppData\Local\Temp\swap.vhdx An absolute Windows path to the swap virtual hard disk.

### wsl - Configuration - Notes

- set interop to launce windows programs? https://learn.microsoft.com/en-us/windows/wsl/wsl-config#interop-settings

## wsl - Adoption Issues

- [x] Task -> ◽ Slow file reads (explore linux only copies)
  - setup vscode remote
  - this was an issue with the git client
- [ ] Task -> ◽ eof issues on /mnt drives --> sugges to modify git settings see https://code.visualstudio.com/docs/remote/troubleshooting#_resolving-git-line-ending-issues-in-wsl-resulting-in-many-modified-files

## wsl - Dockers

- https://docs.docker.com/engine/install/ubuntu/#uninstall-docker-engine

> Note that images and containers are stored here

```bash
/var/lib/docker
/var/lib/containerd
```

> Install went fine. Issue with credentials

- `Error saving credentials: error storing credentials - err: exit status 1, out: `Could not connect: No such file or directory`
- solved with `sudo docker login`
  Resolve warning?

```bash
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credential-stores

```

### wsl - Dockers Sudo build issue

## wsl - Daily Driver

```bash
wsl --install -d Ubuntu
wsl ~ //launches default
wsl -l -v ~ list Installe Linux OS's
wsl --set-default Ubuntu //changes what wsl ~ does
```

- edit `/etc/resolve.conf`

## wsl - disk management

### Issue

https://stackoverflow.com/questions/70946140/docker-desktop-wsl-ext4-vhdx-too-large
https://github.com/rancher-sandbox/rancher-desktop/issues/2398
https://github.com/microsoft/WSL/issues/4699#issuecomment-627133168

https://learn.microsoft.com/en-us/windows/wsl/disk-space#how-to-check-your-available-disk-space

wsl --system -d ubuntu df -h /mnt/wslg/distro
wsl --system -d rancher-desktop df -h /mnt/wslg/distro
wsl --system -d rancher-desktop-data df -h /mnt/wslg/distro

## wsl - general setup

```bash
ping www.google.com
// Edit resolve.conf
// - set nameserver to 8.8.8.8
sudo apt update && sudo apt upgrade
sudo apt install node
// review command for nvm install
```

- https://learn.microsoft.com/en-us/windows/wsl/filesystems#file-storage-and-performance-across-file-systems
  > "We recommend against working across operating systems with your files, unless you have a specific reason for doing so."

## wsl - Executable Issues

> Seems like mounted fils from windows (NFTS) get an executable permission by default. Attempting the fix below to account for it.
> Also git tracks making something executable as a change. So git configs may be adjusted to ignore it.
> eventually commented out the optins to allow running windows programs from wsl

- edit `/etc/resolve.conf`

https://github.com/microsoft/WSL/issues/936
https://github.com/microsoft/WSL/issues/936#issuecomment-563447530

```bash

sudo touch etc/wsl.conf

cat '
[boot]
systemd=true

[automount]
enabled = true
options = "metadata,umask=027,fmask=117"
' > /etc/wsl.conf
```

## wsl - Mason Issues

> seems like a GNU TLS error is due to git issues

working off of this Install Issues https://stackoverflow.com/questions/52529639/gnutls-recv-error-110-the-tls-connection-was-non-properly-terminated

- tldr rebuild git from source

## wsl - Install Issues

> Hashmap errors and inability to download files with curl

**Solution:** DisplayLink Hub was cuasing issues; ‼️ Update over wifi

🛑 curl -o file https://nodejs.org/dist/v20.16.0/node-v20.16.0-linux-x64.tar.xz

- Interesting but incorrect
  - https://github.com/microsoft/WSL/issues/4585
  - https://github.com/microsoft/WSL/issues/4139

```get IP
$ cat /etc/resolv.conf

PS C:\WINDOWS\system32> $myIp = (Ubuntu1804 run "cat /etc/resolv.conf | grep nameserver | cut -d' ' -f2")
PS C:\WINDOWS\system32> $myIp
172.21.0.1
PS C:\WINDOWS\system32>  New-NetFirewallRule -DisplayName "WSL" -Direction Inbound  -LocalAddress $myIp -Action Allow
```

## Disk Cleanup

> overtime the wsl vdhx file grows very large

1. Make sure docker is purged

```sh
docker system prune -a --volumes
docker image prune -f
```

2. Clean apt

```sh
sudo apt-get clean                                                                                                                                                         │
sudo apt-get autoremove --purge
```

3. optmize `ext4.vhdx` file - from an admin powershell

```sh
wsl --shutdown
wsl --manage Ubuntu --set-sparse false
optimize-vhd -Path C:\Users\Y891986\AppData\Local\rancher-desktop\distro-data\ext4.vhdx -Mode full
wsl --manage Ubuntu --set-sparse true
```

4. use gdu if you want

```sh
sudo gdu --ignore-dirs /mnt/c /
```
