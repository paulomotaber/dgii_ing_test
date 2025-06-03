<a name="leeme-top"></a>
## Documentación de las pruebas (Escenario II) de la vacante a Ing. de Sistemas de la DGII.


<!-- Tabla de contenido -->
<details>
  <summary>Tabla de contenido</summary>
  <ol>
    <li><a href="#acerca-del-playbook">Acerca del Playbook</a>
      <ul>
        <li><a href="#tecnologías-usadas">Tecnologías usadas</a></li>
        <li><a href="#estructura-del-playbook">Estructura del Playbook</a></li>
      </ul>
    </li>
    <li><a href="#ejecución-del-playbook">Ejecución del Playbook</a></li>
    <li><a href="#prerequisitos">Prerequisitos</a></li>
      <ul>
        <li><a href="#ansible-secrets">Ansible Secrets</a></li>
        <li><a href="#vcenter">vCenter</a></li>
        <li><a href="#servidor-de-ansible">Servidor de Ansible</a></li>
        <li><a href="#maquina-virtual">Máquina virtual</a></li>
        <li><a href="#dns">DNS</a></li>
        <li><a href="#inventario-de-ansible">Inventario de Ansible</a></li>
        <li><a href="#vm-en-blanco">Vm en Blanco</a></li>
      </ul>
    <li><a href="#parametrización">Parametrización</a></li>
      <ul>
        <li><a href="#info_k8s">info_k8s</a></li>
        <li><a href="#vms_template">vms_template</a></li>
      </ul>    
    <li><a href="#valores-fijos">Valores Fijos</a></li>
      <ul>
        <li><a href="#ingress">Ingress</a></li>
        <li><a href="#argocd">ArgoCD</a></li>
      </ul>
    <li><a href="#info">Info</a></li>
  </ol>
</details>



### Tecnologías usadas

Aquí se muestran las tecnologías usadas, así como lenguajes, sistemas operativos, frameworks y aplicaciones.

 | Plataformas         | FrameWorks/Aplicaciones  | Scripting's  y Lenguajes    |
 | --------------------| ------------------------ | --------------------------- |
 | ![Azure_DevOps]     | ![NodeJS]                | ![HTML5]                    |
 | ![Azure]            | ![HELM]                  | ![YAML]                     |
 | ![Kubernetes]       | ![Ingress]               | ![Shell-scripting]          |
 | ![VsCode]           | ![ArgoCD]                | ![MarkDown]                 |

### Estructura del Playbook
```bash
─
│─── deploy-k8s-step1.yml
│─── deploy-k8s-step2.yml
│─── README.md
│
├───playbooks\
│   ├─── ansible-add-ssh-keys.yml
│   ├─── deploy-k8s-argocd.yml
│   ├─── deploy-k8s-common-nodes.yml
│   ├─── deploy-k8s-master-node.yml
│   ├─── deploy-k8s-worker-node.yml
│   ├─── deploy-os-basics_uyuni.yml
│   └─── deploy-vms_vcenter.yml
│
```

## Info

Este PlayBook fue creado por Paulo Mota Bernard en el mes de Mayo de 2024 y revisado por Aaron Martinez Martinez.

Se hicieron muchos cambios versinados en el Repo de DGII de Ansible-Playbook, version actual Noviembre 2024.

Se hicieron muchas pruebas y errores aprovechando el Cluster de la POC de Kubernetes, se validaron todas las funciones establecidas en este PlayBook y se hicieron los ajustes de lugar.

Cualquier duda, mejora optimización de código (por favor!!) o consulta, 
contactarme via Teams (DGII y <a href=mailto:paulomb.work@outlook.com>Personal</a>), WhatsApp (Flota, <a href="https://api.whatsapp.com/send?phone=18494556662&amp;text=Contactame%20por%20cualquier%20duda%20o%20informaci%C3%B3n">Personal</a>).

<p align="right">(<a href="#leeme-top">Volver arriba</a>)</p>

<!-- Enlaces de MarkDown e Imágenes usadas -->
<!-- https://dev.to/envoy_/150-badges-for-github-pnk-->
<!-- https://simpleicons.org/-->


[Python]: https://img.shields.io/badge/Python-14354C?style=for-the-badge&logo=python&logoColor=white
[Python-url]: https://www.python.org/
[Pip]: https://img.shields.io/badge/PiP_Python-14354C?style=for-the-badge&logo=pypi
[Pip-url]: https://pypi.org/project/pip/
[Kubernetes]: https://img.shields.io/badge/Kubernetes-A81D33?style=social&logo=kubernetes
[Kubernetes-url]: https://kubernetes.io/
[Debian]: https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white
[Debian-url]: https://www.debian.org/index.html
[MarkDown]: https://img.shields.io/badge/markdown-000000?style=for-the-badge&logo=markdown&logoColor=white
[Shell-scripting]: https://img.shields.io/badge/Shell-Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white
[YAML]: https://img.shields.io/badge/YAML-2B2B2B?style=for-the-badge&logo=yaml
[HTML5]: https://img.shields.io/badge/HTML-239120?style=for-the-badge&logo=html5&logoColor=white
[HELM]: https://img.shields.io/badge/HELM-4C2B2A?style=for-the-badge&logo=helm
[HELM-url]: https://helm.sh/
[NodeJS]: https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white
[ArgoCD]: https://img.shields.io/badge/ARGOCD-%23EF7B4D?style=for-the-badge&logo=argo&labelColor=black&color=black
[ArgoCD-url]: https://argo-cd.readthedocs.io/
[Azure_DevOps]: https://img.shields.io/badge/Azure_DevOps-0078D7?style=for-the-badge&logo=azure-devops&logoColor=white
[Azure]: https://img.shields.io/badge/Microsoft_Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white
[Ingress]:https://img.shields.io/badge/Ingress-%23783CBD?style=for-the-badge&logo=ingress&labelColor=black&color=black
[Ingress-url]: https://github.com/kubernetes/ingress-nginx
[VsCode]: https://img.shields.io/badge/VsCode-007ACC?style=for-the-badge&logo=visual%20studio%20code&logoColor=007ACC&labelColor=gray&color=gray
