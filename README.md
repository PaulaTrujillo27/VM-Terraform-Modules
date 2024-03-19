# VM-Terraform

# Descripción
Este repositorio alberga archivos de Terraform diseñados para desplegar una máquina virtual Ubuntu Linux en Azure. El código está modularizado en diferentes carpetas. Terraform, una herramienta de HashiCorp de código abierto, permite la definición y el aprovisionamiento de infraestructura como código.

# Requisitos Previos
Antes de comenzar, hay que asegurarse de tener instalado Terraform y Azure CLI configurado con las credenciales adecuadas.

# Versionado
Este proyecto está versionado utilizando GitHub.

# Proceso

- Paso 1:

Crea una carpeta que contenga los siguientes archivos:

-  main.tf (Contiene el código fuente para crear instancias en Azure)
-  variables.tf (Define las variables a utilizar)
-  terraform.tfvars (Asigna valores a las variables definidas en variables.tf)
-  outputs.tf (Define las salidas deseadas al crear una instancia)
-  providers.tf (Archivo de definición del proveedor)
  
Luego, crea una subcarpeta llamada modules.

Dentro de la carpeta modules, comienza a definir las instancias que deseas crear. Cada instancia debe ser una carpeta.

En cada carpeta creada anteriormente, crea los archivos main.tf, variables.tf, y outputs.tf.

- Paso 2:

Define las variables utilizadas en este proyecto en el archivo variables.tf.

- Paso 3
  
Asigna valores a las variables en el archivo terraform.tfvars.

- Paso 4
  
Define las instancias de Azure necesarias para crear la máquina virtual en el archivo main.tf.

# Comandos Terraform

1. Inicializar Terraform: Ejecuta el siguiente comando para inicializar Terraform y descargar los proveedores requeridos.

*terraform init*

1. Revisar y Personalizar la Configuración: Abre el archivo main.tf en un editor de texto y ajusta la configuración según sea necesario.

2. Planificar la Implementación: Ejecuta el siguiente comando para crear un plan de ejecución.
   
*terraform plan*

1. Asegurar el Formato Correcto: Si realizas cambios, asegúrate de tener la identación correcta.

*terraform fmt*

1. Implementar la Máquina Virtual: Si el plan se ve bien, aplica la configuración para desplegar la máquina virtual.

*terraform apply*

# Evidencias

# Terraform Init

![image](https://github.com/PaulaTrujillo27/VM-Terraform/assets/71205932/d4fddede-b9b7-4264-ba21-4b9a6fb238f6)

# Terraform Validate

![image](https://github.com/PaulaTrujillo27/VM-Terraform/assets/71205932/cfb095a7-7ea3-4442-be54-8452d4e8aea4)

# Terraform Plan

![image](https://github.com/PaulaTrujillo27/VM-Terraform/assets/71205932/f00157c0-b474-4e95-a99f-9e9b17e8a5a1)
![image](https://github.com/PaulaTrujillo27/VM-Terraform/assets/71205932/1704fcdc-d6a1-47cf-90e5-255d3843e14b)
