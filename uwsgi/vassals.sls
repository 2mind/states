include:
  - uwsgi

{% for vassal in pillar["uwsgi_vassals"] %}

{{ vassal.name }}:
  pkg.installed

/etc/uwsgi/vassals/{{ vassal.name }}.ini:
  file.managed:
    - source: salt://uwsgi/vassal.ini.jinja
    - template: jinja
    - defaults:
        module: {{ vassal.module }}
        processes: {{ vassal.processes or 2 }}
    - require:
      - pkg: {{ vassal.name }}
      - file: /etc/uwsgi/common.ini
      - file: /var/run/uwsgi
      - file: /var/log/uwsgi

{% endfor %}
