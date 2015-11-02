sshd:
  pkg.installed:
    - name: openssh-server
  service.running:
    - name: ssh
    - enable: true
    - require:
      - pkg: sshd-pkg

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/sshd_config
    - watch_in:
      - service: sshd
