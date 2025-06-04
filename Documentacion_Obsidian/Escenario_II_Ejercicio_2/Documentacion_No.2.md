# Azure

Se utilizo azure como plataforma de creación, configuración y despliegue de los requerimientos indicados en el examen.
## Git-Commit

Aquí se encuentra la imagen de Git de los Commit y Branch como evidencia de los cambios y mejoras.

## AKS (Azure Kubernetes Services)
### Creación

Se procedió a crear un cluster AKS de 2 nodos, lamentablemente por temas de suscripción solo se pueden crear 2 nodos con el compute especificado.

[[recursos/90b057fdd362aa9dd64aafb71e4b6b2a_MD5.png|Open: Pasted image 20250603213348.png]]
![[recursos/90b057fdd362aa9dd64aafb71e4b6b2a_MD5.png]]

[[recursos/cdf2dd635a5cec513d24809bfdbecbb8_MD5.png|Open: Pasted image 20250603213315.png]]
![[recursos/cdf2dd635a5cec513d24809bfdbecbb8_MD5.png]]

[[recursos/b48bd8609cd849c4a8a10dbb1a46dbf0_MD5.png|Open: Pasted image 20250603213424.png]]
![[recursos/b48bd8609cd849c4a8a10dbb1a46dbf0_MD5.png]]

[[recursos/20c6f4d68027c1dde6d49b42244e2d97_MD5.png|Open: Pasted image 20250603213524.png]]
![[recursos/20c6f4d68027c1dde6d49b42244e2d97_MD5.png]]

[[recursos/fb5997631aa34c765976bda548c19b2f_MD5.png|Open: Pasted image 20250603213545.png]]
![[recursos/fb5997631aa34c765976bda548c19b2f_MD5.png]]

[[recursos/6668ef9c65ded849b9204d6ae80c0013_MD5.png|Open: Pasted image 20250603213601.png]]
![[recursos/6668ef9c65ded849b9204d6ae80c0013_MD5.png]]


### Administración via Lens
Agregamos el cluster via lens con la configuración tomada de Azure Web CLI

[[recursos/16683778eb84a92a29202c48aca4f2fe_MD5.png|Open: Pasted image 20250603213808.png]]
![[recursos/16683778eb84a92a29202c48aca4f2fe_MD5.png]]

[[recursos/911c1eb945446480344b8f55fba8b020_MD5.png|Open: Pasted image 20250603213740.png]]
![[recursos/911c1eb945446480344b8f55fba8b020_MD5.png]]


## Pipeline y ACR

Se creo un 2do Pipeline para tomar la pagina web en el repositorio de GitHub (la misma usada en el ejercicio No.1) y crear una imagen, colocarla en el ACR (Azure Container Registries).

Para este Pipeline creamos 2 archivos nuevos nginx.conf y Dockerfile (están en el repositorio) los cuales se utilizaron para crear una imagen basada en Ubuntu desde la VM local en Debian 11 con el Agente de Pipeline y configurar el nginx para la publicación de la página web.

[[recursos/9de6a8bd7f7f702c9e8b9e80bafd83a1_MD5.png|Open: Pasted image 20250603214036.png]]
![[recursos/9de6a8bd7f7f702c9e8b9e80bafd83a1_MD5.png]]

Me tope con un inconveniente ya que en Debian, Docker no tenia configurado los DNS para ver a Ubuntu y descargar los archivos necesarios para la instalación de NginX.
[[recursos/0bb8e12834e197b100edc343a69ba2ab_MD5.png|Open: Pasted image 20250603214408.png]]
![[recursos/0bb8e12834e197b100edc343a69ba2ab_MD5.png]]

Se resolvio agregando los DNS a Docker

[[recursos/e712347caa1857c6c2f657f6a3879067_MD5.png|Open: Pasted image 20250603214548.png]]
![[recursos/e712347caa1857c6c2f657f6a3879067_MD5.png]]

Una vez realizado se creo la imagen.
[[recursos/0adec26aadfc39141b6f7e95693b57d6_MD5.png|Open: Pasted image 20250603214629.png]]
![[recursos/0adec26aadfc39141b6f7e95693b57d6_MD5.png]]

[[recursos/60e74adab1048414500530a4c632f58c_MD5.png|Open: Pasted image 20250603214758.png]]
![[recursos/60e74adab1048414500530a4c632f58c_MD5.png]]

[[recursos/d5a752b1b203243760feb3087ade1589_MD5.png|Open: Pasted image 20250603214818.png]]
![[recursos/d5a752b1b203243760feb3087ade1589_MD5.png]]


## Deployment de Imagen en ACR

Se procedió a crear el Deployment e implementación via web.

[[recursos/04da8660583f5d87530d0694f1201a81_MD5.png|Open: Pasted image 20250603214940.png]]
![[recursos/04da8660583f5d87530d0694f1201a81_MD5.png]]

Como se solicito escalabilidad, esta via web usando la confguración habitual no es posible, asi que se procedio a realizar lo basico y agregar las opciones necesarias
[[recursos/22db08c3ba8a2a1b2c19f5b70169e48a_MD5.png|Open: Pasted image 20250603215132.png]]
![[recursos/22db08c3ba8a2a1b2c19f5b70169e48a_MD5.png]]
  
[[recursos/ed4e08fbcf9eb36318dcfdb58397473c_MD5.png|Open: Pasted image 20250603215147.png]]
![[recursos/ed4e08fbcf9eb36318dcfdb58397473c_MD5.png]]
Se crearon limites al 90% de procesador y memoria para escalar hasta 5 pods.

[[recursos/32f1c963acdb6708453963d45fed9af6_MD5.png|Open: Pasted image 20250603215243.png]]
![[recursos/32f1c963acdb6708453963d45fed9af6_MD5.png]]

[[recursos/278a81b98dc3b3347b37b8dc1a8f76ce_MD5.png|Open: Pasted image 20250603215350.png]]
![[recursos/278a81b98dc3b3347b37b8dc1a8f76ce_MD5.png]]

### Resultado Pagina Web

[[recursos/764258ad87aada85eaa68384a53274b2_MD5.png|Open: Pasted image 20250603215438.png]]
![[recursos/764258ad87aada85eaa68384a53274b2_MD5.png]]

[[recursos/05b01a8bb0c6585dc868d007fe4485dd_MD5.png|Open: Pasted image 20250603215449.png]]
![[recursos/05b01a8bb0c6585dc868d007fe4485dd_MD5.png]]

### Resultado del Clusters y sus Servicios

[[recursos/57569cd2a3b308547c421fd50541e8fe_MD5.png|Open: Pasted image 20250603215522.png]]
![[recursos/57569cd2a3b308547c421fd50541e8fe_MD5.png]]

[[recursos/59c312a4ba163d9e36e153211cb9dc0f_MD5.png|Open: Pasted image 20250603215655.png]]
![[recursos/59c312a4ba163d9e36e153211cb9dc0f_MD5.png]]

[[recursos/4d263efe0e099e714b4e6a365602b992_MD5.png|Open: Pasted image 20250603215822.png]]
![[recursos/4d263efe0e099e714b4e6a365602b992_MD5.png]]

[[recursos/e65eec0120a7a4f5769e16f4e56e4cf3_MD5.png|Open: Pasted image 20250603215842.png]]
![[recursos/e65eec0120a7a4f5769e16f4e56e4cf3_MD5.png]]
