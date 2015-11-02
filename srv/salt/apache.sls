apache:
  pkg.installed:
  {% if grains.os_family == 'Debian' %}
    - name: apache2
  {% elif grains.os_family == 'RedHat' %}
    - name: httpd
  {% endif %}
  service.running:
  {% if grains.os_family == 'Debian' %}
    - name: apache2
  {% elif grains.os_family == 'RedHat' %}
    - name: httpd
  {% endif %}
