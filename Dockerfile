# Imagen de Ansible de la PoC: Ansible + pywinrm (para VM Windows por WinRM). Publicada en GHCR por el workflow de este repo.
FROM alpine/ansible:2.18.1
RUN (python3 -m pip --version >/dev/null 2>&1 || apk add --no-cache py3-pip) \
 && python3 -m pip install --no-cache-dir --break-system-packages "pywinrm>=0.4.3" \
 && python3 -c "import winrm" \
 && ansible-doc -t module ansible.windows.win_copy >/dev/null
