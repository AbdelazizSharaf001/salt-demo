{% for name, user in pillar.get('users', {}).items() %}
user-{{ name }}:
  user.present:
    - name: {{ name }}
    - fullname: {{ user.fullname }}
    - password: {{ user.password_hash }}
    - mindays: 30
{% endfor %}
