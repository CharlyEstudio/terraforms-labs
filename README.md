![Terraform](https://hashicorp.github.io/field-workshops-terraform/slides/aws/terraform-oss/images/tf_aws.png)

Este repositorio contiene laboratorios de pruebas para poder configurar AWS de forma automatizada desde Terraform.

## Iniciar

Para iniciar una configuración, hay que entrar a un laboratorio y ejecutar lo siguiente:
```
terraform init
```

Con esto se bajar el proveedor, que en este caso es AWS, para poder levantar la configuración y subirlo a la nube y se ejecute.

## Ejecución

Para ejecutar la configuración hay que realizar los siguientes pasos, sin embargo, todas las veces que se ejecutan los comandos de ejecuión, siempre nos va a pedir confirmar y para no tener que escribir a cada rato "yes", se recomienda colocar los flags (ver la sección de flags).

1. Hay que revisar la planificación, con esto, puedes revisar (test) que la configuración no tenga errores.
```
terraform plan -auto-approve
```
2. Ejecutar la configuración, esto, realizará toda la configuración que se hizo en terraform hacia la nube.
```
terraform apply -auto-approve
```
3. Eliminar la configuración ejecutada, esto, es una gran ayuda para poder bajar todo lo que se subio en una sola ejecución. Esto, si haces un cluster, cloudwatch, etc, todo lo baja; siempre y cuando, este en la configuración de terraform que ejecutaste.
```
terraform destroy -auto-approve
```

## Flags

Las banderas sirven para dar más opciones y/o opciones, a continuación se colocan los más recomendables y/o usados.

1. Aprovación Automática. Cada vez que se realiza una ejecución de configuración, este necesita que se confirme colocando la palabra "yes" en la consola; para este caso, se tiene la bandera ```-auto-approve``` para que terraform no te pida esa validación.

> Ejemplo: ```terraform destroy -auto-approve```

2. Archivo de Variables. Si necesitamos usar un archivo donde podamos colocar variables que sirvan a la ejecución de la configuración de terraform, la bandera ```-var-file``` es la mejor opción.

> Ejemplo: ```terraform plan -auto-approve -var-file <path_file>```

********
# 🤝🏻 Connect with Me

<p align="center">
<a href="https://www.facebook.com/JCharlyR" target="_blank"><img alt="Website" src="https://img.shields.io/badge/Contact-JCharlyR-blue?style=flat&logo=google-chrome"></a>
<a href="https://www.linkedin.com/in/charlyramirez/" target="_blank"><img alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-@charlyramirez-blue?style=flat&logo=linkedin"></a>
<a href="https://twitter.com/Charly15442" target="_blank"><img alt="Twitter" src="https://img.shields.io/badge/Twitter-@charlyramirez-blue?style=flat&logo=twitter"></a>
<a href="mailto:pingestudio@gmail.com"><img alt="Email" src="https://img.shields.io/badge/Email-pingestudio@gmail.com-blue?style=flat&logo=gmail"></a>
</p>