# pb-ansible

Playbooks de despliegue de la PoC CI/CD PowerBuilder en OCI.

- `playbooks/deploy.yml`: instala el paquete generado por `pb-app` en la VM destino del ambiente y verifica que responda.
- `inventory/<ambiente>.ini`: inventario por ambiente. El pipeline lo genera desde las variables del repositorio (`TARGET_HOST`).

En la PoC de prueba la VM destino es Linux (Ubuntu, Always Free), asi que la conexion es SSH y el "instalador" es un paquete tar.gz
servido por nginx. En la version final la VM destino es Windows y la conexion es WinRM 5986 (modulo `win_package`).
