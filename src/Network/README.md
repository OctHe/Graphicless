## Clash

clash is a tunnel in Go.

### Installation

openSUSE contains clash in its repository, so it can be downloaded directly

    sudo zypper in clash

Debian repository does not contain clash, so it can be downloaded from [Github release](https://github.com/Dreamacro/clash/releases).
It also can be downloaded in command.
As an example

    wget https://github.com/Dreamacro/clash/releases/download/v1.18.0/clash-linux-amd64-v1.18.0.gz
    mv clash-linux-amd64-v1.18.0.gz clash

### Basic Usage

If clash is run in the user space, copy the `config.yaml` file to `~/.config/clash/` directory and run

    clash

Clash will download the `Country.mmdb` file by itselef and load the configuration in `~/.config/clash/`.

### Autostart

Clash support auto-start after opening the system.
In openSUSE, the download version of clash has a systemd service with `/lib/system/system/clash.service` to support the auto-start process.
This service is based on systemd, so it works for openSUSE and other distributions that uses systemd as the init process.
Different from manually run clash, the systemd will load the configuration in the directory `/etc/clash/` by default.
So move the configuration file and mmdb file in the above directory by

    sudo mv /path/to/config/file /etc/clash/
    sudo mv /path/to/Country.mmdb /etc/clash

Then, enable and start clash service

    systemclt enable clash
    systemclt start clash

The final process is to config the system-level network setting or program-level network setting to use the clash service.

## Clash for LAN
 
Clash can support connection from devices in the local area network (LAN).
To enable it, just edit the config.yaml file and set the `allow-lan` to `true`.
Then open clash with manual

    clash -d ~/.config/clash/

## snapdrop.net

[snapdrop](https://snapdrop.net) is an easily-used point-to-point file transfer in the web browser.
Open the link of snapdrop in the same network.
The website can identify all devices in the same network. 
Just drop the file to the target.
