base:
  '*':
    - core
    - users
  'sodium.uggedal.com':
    - dhcp
    - pacman.uk
    - xen
    - salt.master
    - zsh
    - sic
    - development*
    - packaging
    - nginx.sites
    - uwsgi.services
    - redis
    - postgresql.databases
  'magnesium.uggedal.com':
    - dhcp
    - pacman.uk
    - xen
    - tarsnap.backup
    - nginx.sites
    - uwsgi.services
    - redis
    - postgresql.databases
  'aluminium.uggedal.com':
    - pacman.no
    - zsh
    - acpid
    - xorg.nvidia
    - netcfg.profiles
    - netcfg.wireless
  'silicon.uggedal.com':
    - pacman.no
    - zsh
    - acpid
    - xorg.intel
    - development
    - development.js
    - netcfg.profiles
    - netcfg.wireless
  'sulfur.uggedal.com':
    - pacman.uk
    - tarsnap.backup
    - nginx.sites
    - uwsgi.services
    - redis
    - netcfg.profiles
