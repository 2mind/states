extra_packages:
  pkg.installed:
    - names:
{%- for pkg in pillar.get('extra_packages', []) %}
      - {{ pkg }}
{%- endfor %}
