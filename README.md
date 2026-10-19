# pb-ansible

Playbooks de despliegue de la PoC CI/CD PowerBuilder en OCI.

- `playbooks/build-windows.yml`: compila y empaqueta en la VM `pb-build` (Windows, WinRM 5986): PBAutoBuild si PowerBuilder esta instalado, Inno Setup para el instalador; recupera el `.exe` al runner.
- `playbooks/deploy-windows.yml`: instala el `.exe` en silencio en la VM Windows del ambiente por WinRM 5986 y ejecuta las pruebas de humo.
- `playbooks/deploy.yml`: variante para una VM Linux por SSH (primera prueba).
- `Dockerfile`: imagen de Ansible con pywinrm, publicada en GHCR (`ghcr.io/plfm-eng/pb-ansible`) por `.github/workflows/imagen.yml`.
- `inventory/<ambiente>.ini`: inventario por ambiente. El pipeline lo genera desde las variables del repositorio (`TARGET_HOST`).
