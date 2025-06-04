# Azure

Se utilizo azure como plataforma de creación, configuración y despliegue de los requerimientos indicados en el examen.
## Git-Commit

Aquí se encuentra la imagen de Git de los Commit y Branch como evidencia de los cambios y mejoras.

![[recursos/3cab4759b3999cdd74d0813cbc4fedc2_MD5.png]]

## App Services
### Creación
Se creo un app Service para pagina web estática con la siguiente configuración:

![[recursos/7d1e069d0f139308c547625da9b9cab2_MD5.png]]

![[recursos/a201314fc8584a1e9282c87df42c18d6_MD5.png]]

![[recursos/18a98c2b28941ab2556c22c8118a547f_MD5.png]]

![[recursos/73b5c659d6518da2091b01da6891b83b_MD5.png]]
### Resultado

![[recursos/c368337f52f0e76b41a407887a0b2099_MD5.png]]
## Pipeline

### Creación
![[recursos/b8c82bace31aa4627173e81fccb1ff1b_MD5.png]]

![[recursos/f502638835926617db0a436e0117f62b_MD5.png]]

Se selecciono Stater pipeline y creo un pipeline customizado (Se encuentra en el repositorio)

![[recursos/c0863ffac1ce8131feee2c89d3341901_MD5.png]]

#### Azure Resource Manager

Se creo un Azure Resource Manager para la entrega del artefacto generado al AppService, ya que se requiere como **azureServiceConnection** dentro del yaml.

![[recursos/6169e0fc87f04c478a47acdf68379b39_MD5.png]]

#### Pruebas unitarias

Se instalo [Node.js — Ejecuta JavaScript en cualquier parte](https://nodejs.org/es) para las configuraciones de las pruebas unitarias de la pagina web estatica.

Se crearon las pruebas unitarias:

![[recursos/6d3724f26471f1e6ec178f71a6f62c16_MD5.png]]

![[recursos/bd25d9bf2de38b45505be3a1475a7f74_MD5.png]]

![[recursos/fe833cb1dd8a6e628e5e859320dc6b53_MD5.png]]


### Configuración de Agente Pipeline

Ya que la suscripción gratuita no contempla agentes en el Pipeline, se lleno el formulario de solicitud a Microsoft.
![[recursos/a9f571f4d4538f810988007fdc006693_MD5.png]]
### Agente local de Azure Pipeline

Mientras se creo una VM local y se le agrego el agente de Pipeline de Azure
![[recursos/fc26d9fe84af8fed1a9c7249c1be681f_MD5.png]]

![[recursos/66c02518dc6dddc9a2f987d930ee6bde_MD5.png]]

![[recursos/83bb479cde4a3f6e17f9775a097a02b2_MD5.png]]

![[recursos/26b728c48bffb2e79bddef835e1e1820_MD5.png]]

![[recursos/d10a8cf19452d0c524dddd0671ec4c17_MD5.png]]


Se creo el PAT (Personal Access Token para la integración del agente de pipeline con Azure DevOps)

![[recursos/a11ed782ba36a17dcac117c4aa1c3e24_MD5.png]]

![[recursos/00a7db48aa2ed43cdcb945ba76a34295_MD5.png]]

### Ejecución del Pipeline

![[recursos/8c78796492684fe96a0611b3999332e1_MD5.png]]

#### Primera versión
![[recursos/df1a0a597d66181583b14be420f6208d_MD5.png]]

![[recursos/fa3e5bb1dce9861f1b3c74520f7f01e7_MD5.png]]

#### Segunda versión

![[recursos/38cc93312135d0918c2dfd0d0c4f1ce6_MD5.png]]

![[recursos/6debaeccd54b62d6a3f322f0ae9735b4_MD5.png]]

![[recursos/6e81fff28b857aafe8edd9679540a6f8_MD5.png]]

![[recursos/e7216dca4787f47dbb567e0bd9259672_MD5.png]]

## Resultados

### Primera version
![[recursos/6697d35230f2eafcbea0bb593f8c53e8_MD5.png]]

### Segunda versión
#### https://dgii-ing-test-paulo-e8h2apatd5aaa2bj.canadacentral-01.azurewebsites.net

![[recursos/0f452f8b1bcfad64a18c11eb273a930a_MD5.png]]

#### https://dgii-ing-test-paulo-e8h2apatd5aaa2bj.canadacentral-01.azurewebsites.net/website2/

![[recursos/3b80eac66cdd873334179272383ff8c7_MD5.png]]

