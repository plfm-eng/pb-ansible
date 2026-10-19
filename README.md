# pb-ansible

Playbooks de despliegue de la PoC CI/CD PowerBuilder en OCI.

- `playbooks/deploy-windows.yml`: instala el paquete generado por `pb-app` en la VM Windows del ambiente por WinRM 5986 y verifica la version instalada (es el que usa el pipeline).
- `playbooks/deploy.yml`: variante para una VM Linux por SSH (primera prueba).
- `Dockerfile`: imagen de Ansible con pywinrm, publicada en GHCR (`ghcr.io/plfm-eng/pb-ansible`) por `.github/workflows/imagen.yml`.
- `inventory/<ambiente>.ini`: inventario por ambiente. El pipeline lo genera desde las variables del repositorio (`TARGET_HOST`).
