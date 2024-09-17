#!/bin/bash

# Terraform commands
# Se recomienda ejecutar shellcheck en el archivo
shellcheck provisioning/terraform/setup.sh

# Incluir utilidades si es necesario
# shellcheck disable=SC1091
. "$(dirname "$0")/utilities.sh"

# Ejecutar Terraform init y apply
# Asegúrate de proporcionar la ruta correcta a tu configuración de Terraform
terraform init -chdir=/ruta/a/tu/configuración/de/terraform/kubernetes
terraform apply -auto-approve -chdir=/ruta/a/tu/configuración/de/terraform/kubernetes
