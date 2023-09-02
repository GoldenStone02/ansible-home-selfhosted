# Self-Hosted server using Ansible
This is my setup I use to install some of my self-hosted services (on my Raspberry Pi T-T).   

## Getting Started
To get started with this project, clone the repository.   

```
git clone [this repo url]
```

## Prerequisities
- Raspberry Pi
- Ubuntu 20.04 (installed on your server)
- SSH Pubkeys (from your server)

## Requirements

Install the necessary Ansible collections using the following command:
```
ansible-galaxy install -r requirements.yml
```
## Deployment
Run the ansible playbook using the following command:
```
ansible-playbook -i inventory.ini run.yml
```


## Services included:

### Media
- [Jellyfin](https://github.com/jellyfin/jellyfin) (Just a media server)
- [Libreddit](https://github.com/libreddit/libreddit) (Private front-end for Reddit)
- [OpenBooks](https://github.com/evan-buss/openbooks) (eBook downloader)

### Services
- [Authelia](https://github.com/authelia/authelia) (2FA Authentication provider)
- [Nextcloud](https://hub.docker.com/r/linuxserver/nextcloud) (Self-hosted cloud platform)
- [Vaultwarden](https://github.com/dani-garcia/vaultwarden) (A FOSS Bitwarden fork written in Rust)
- [Watchtower](https://github.com/containrrr/watchtower) (Automatic updater for Docker images)

### System
- [PiHole + Unbound](https://github.com/chriscrowe/docker-pihole-unbound) (Ad-blocker + Recursive DNS Resolver)
- [Portainer](https://github.com/portainer/portainer) (Docker management)

### Port Mappings
> If there are multiple ports mapped, the bolded port is the **main service port**.
> 
> External ports are exposed to **localhost, not the outside world**. 

| Name                | Type    | External Port        | Internal Port        |
| ------------------- | ------- | -------------------- | -------------------- |
| Libreddit           | Media   | 2000                 | 8080                 |
| Jellyfin            | Media   | 2300                 | 8096                 |
| Openbooks           | Media   | 2500                 | 80                   |
| Authelia            | Service | -                    | -                    |
| NextCloud           | Service | 2700                 | 80                   |
| Vaultwarden         | Service | 4000                 | 80                   |
| PiHole + Unbound    | System  | 8080                 | 80                   |
| Portainer           | System  | **5000**, 8000, 9443 | **9000**, 8000, 9443 |
| Homer               | System  | 7000                 | 8080                 |
| Nginx Proxy Manager | System  | -                    | -                    |

## Security

This configuration is intended to be used within your local network.

## WIP features

- [ ] Adding Authelia into web app w/o 2FA
- [ ] Unattended upgrades - https://github.com/hifis-net/ansible-role-unattended-upgrades
- [ ] Adding ytdl for jellyfin shows - https://github.com/mendel5/alternative-front-ends#youtube
- [x] UFW or Iptables for Firewall - [link](https://serverfault.com/questions/1014531/ufw-and-iptables-which-is-better-and-why) (Added UFW)
  - [ ] Might change to Iptables for better integration with docker

# Acknowledgments
Thanks to:
- [@notthebee](https://github.com/notthebee) for inspiring me with his video and [GitHub project](https://github.com/notthebee/infra)
- [@alex27riva](https://github.com/alex27riva/) for his home selfhosted server on his [GitHub repo](https://github.com/alex27riva/ansible-home-selfhosting).


<!-- 
Below are some resources I've used during development

Implementation of PiHole on localhost
https://thanos.mourtzoukos.space/run-pi-hole-in-localhost-and-some-extras/

Certificate Manager
https://smallstep.com/certificate-manager/pricing/
 -->