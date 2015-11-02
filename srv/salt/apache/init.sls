{% set apache = salt['grains.filter_by']({
  'Debian': {'pkg': 'apache2', 'srv': 'apache2'},
  'RedHat': {'pkg': 'httpd', 'srv': 'httpd'},
}, default='Debian') %}

apache:
  pkg.installed:
    - name: {{ apache.pkg }}
  service.running:
    - name: {{ apache.srv }}
