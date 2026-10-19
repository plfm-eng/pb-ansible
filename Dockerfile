# Imagen de Ansible de la PoC: Ansible + pywinrm (para VM Windows por WinRM). Publicada en GHCR por el workflow de este repo.
FROM alpine/ansible:2.18.1
RUN pip install --no-cache-dir "pywinrm>=0.4.3"
