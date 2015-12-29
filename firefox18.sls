firefox18:
{% if grains['cpuarch'] == 'AMD64' %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
{% for version in '18.0', '24.0', '31.0esr', '35.0.1', '38.0.1', '38.0.5', '38.0.6', '39.0', '39.0.3', '40.0', '40.0.1', '40.0.2', '40.0.3', '41.0', '41.0.1', '41.0.2', '42.0', '43.0', '43.0.1', '43.0.2' %}
'{{ version }}':
full_name: 'Mozilla Firefox {{ version }} (x86 en-US)'
installer: 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/{{ version }}/win32/en-US/Firefox%20Setup%20{{ version }}.exe'
install_flags: '/s'
uninstaller: '{{ PROGRAM_FILES }}\Mozilla Firefox\uninstall\helper.exe'
uninstall_flags: '/S'
msiexec: False
locale: en_US
reboot: False
{% endfor %}
