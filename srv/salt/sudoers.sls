sudo: pkg.installed

/etc/sudoers:
  file.managed:
    - source: salt://sudoers
    - user: root
    - group: root
    - mode: 440
    - check_cmd: visudo -c -s -f
    - require:
      - pkg: sudo
