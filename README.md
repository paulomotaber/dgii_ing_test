<a name="leeme-top"></a>
## Documentación de las pruebas (Escenario II) de la vacante a Ing. de Sistemas de la DGII.

Esta documentación tiene información relevante a este repositorio de GitHub.
A continuación se encuentra un menu como tabla de contenido que lleva las secciones con la información indicada.

<!-- Tabla de contenido -->
<details>
  <summary>Tabla de contenido</summary>
  <ol>
    <li><a href="#tecnologías-usadas">Tecnologías usadas</a></li>
    <li><a href="#estructura-del-playbook">Estructura del Playbook</a></li>
    <li><a href="#documentación">Documentación</a></li>
    <li><a href="#websites">WebSites</a></li>
    <li><a href="#info">Info</a></li>
  </ol>
</details>

### Tecnologías usadas

Aquí se muestran las tecnologías usadas, así como lenguajes, sistemas operativos, frameworks y aplicaciones.

 | Plataformas         | FrameWorks/Aplicaciones  | Scripting's  y Lenguajes    |
 | --------------------| ------------------------ | --------------------------- |
 | ![Azure_DevOps]     | ![NodeJS]                | ![HTML5]                    |
 | ![Azure]            | ![Kubernetes]            | ![YAML]                     |
 | ![Debian]           | ![VsCode]                | ![Shell-scripting]          |
 | ![ubuntu]           | ![Lens]                  | ![MarkDown]                 |


### Estructura del Playbook

```bash
─
├─── azure-pipelines-docker.yml
├─── azure-pipelines.yml
├─── Azure_AKS_website_deployment.yml
├─── Dockerfile
├─── nginx.conf
├─── README.md
├─── Documentacion_Obsidian\
¦    ├─── General.md
¦    ├─── .obsidian\
¦    └─── Azure\
¦    ¦    ├─── ACR.md
¦    ¦    ├─── AKS.md
¦    ¦    ├─── Costos.md
¦    ¦    ├─── PipeLines.md
¦    ¦    ├─── RG.md
¦    ¦    └─── recursos\
¦    ├─── Escenario_II_Ejercicio_1\
¦    ¦    ├─── Documentacion_No.1.md
¦    ¦    └─── recursos\
¦    ├───Escenario_II_Ejercicio_2\
¦    ¦   ├───Documentacion_No.2.md
¦    ¦   └─── recursos\
¦    └─── recursos\
└─── website\
     ├─── .stylelintrc.json # *
     ├─── default.css
     ├─── eslint.config.mjs # *
     ├─── fonts.css
     ├─── index.html
     ├─── package-lock.json # *
     ├─── package.json # *
     ├─── fonts\
     ├─── images\
     ├─── node_modules\ # *
     └─── website2\
         ├─── default.css
         ├─── fonts.css
         ├─── index.html
         ├─── fonts\
         └─── images\
Notas:
* Relacionado a las pruebas unitarias funcionales, estas son basadas en NodeJS
```
<p align="right">(<a href="#leeme-top">Volver arriba</a>)</p>

## Documentación

Toda la documentación relacionada al **Escenario II** del examen esta en este repositorio de GitHub en la carpeta **"Documentacion_Obsidian"**, esta carpeta debe de abrirse como una bóveda de <a href="https://obsidian.md/download">Obsidian</a>, al descargarse, se debe de habilitar y aceptar los plugins de fuentes externas para poder apreciar el contenido.

Contiene las imágenes y texto relevantes escrito en MarkDown.

<p align="right">(<a href="#leeme-top">Volver arriba</a>)</p>

## WebSites

Aquí se colocaron 2 paginas web (templates), una en la raíz y otra dentro en websites2, se incluye un folder de node_modules y archivos en la raíz relacionados a las pruebas unitarias en formado .json y .mjs

<p align="right">(<a href="#leeme-top">Volver arriba</a>)</p>

## Info

Cualquier duda, mejora optimización de código (por favor!!) o consulta, 
contactarme via Teams (DGII y <a href=mailto:paulomb.work@outlook.com>Personal</a>), 
WhatsApp (Flota, <a href="https://api.whatsapp.com/send?phone=18494556662&amp;text=Contactame%20por%20cualquier%20duda%20o%20informaci%C3%B3n">Personal</a>).

<p align="right">(<a href="#leeme-top">Volver arriba</a>)</p>

<!-- Enlaces de MarkDown e Imágenes usadas -->

[Kubernetes]: https://img.shields.io/badge/Kubernetes-A81D33?style=social&logo=kubernetes
[Debian]: https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white
[MarkDown]: https://img.shields.io/badge/markdown-000000?style=for-the-badge&logo=markdown&logoColor=white
[Shell-scripting]: https://img.shields.io/badge/Shell-Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white
[YAML]: https://img.shields.io/badge/YAML-2B2B2B?style=for-the-badge&logo=yaml
[HTML5]: https://img.shields.io/badge/HTML-239120?style=for-the-badge&logo=html5&logoColor=white
[NodeJS]: https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white
[Azure_DevOps]: https://img.shields.io/badge/Azure_DevOps-0078D7?style=for-the-badge&logo=azure-devops&logoColor=white
[Azure]: https://img.shields.io/badge/Microsoft_Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white
[VsCode]: https://img.shields.io/badge/VsCode-007ACC?style=for-the-badge&logo=visual%20studio%20code&logoColor=007ACC&labelColor=gray&color=gray
[ubuntu]: https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white
[Lens]: https://img.shields.io/badge/Lens-0078D7?style=for-the-badge&logo=Lens&logoColor=white