#!/bin/bash

# Clonar o repositório de origem
https://github.com/PedroPGuimaraes/image_base.git
cd image_base


# Configurar as credenciais do Git
git config user.name "PedroPGuimaraes"
git config user.email "p.guimaraes@4intelligence.ai"

# Realizar as alterações necessárias
git checkout -b DevOps
sed -i 's/"PedroPGuimaraes\/image_base.git@v1.0.0"/"PedroPGuimaraes\/image_base.git@v1.1.0"/g' Dockerfile

# Adicionar, commit e empurrar as alterações para o repositório de destino
git add .
git commit -m "Atualizar dockerfile"
git push https://github.com/PedroPGuimaraes/update_image_base.git DevOps

# Retornar ao diretório anterior e limpar
cd ..
rm -rf temp_repo
