# Verificar a ultima versao disponivel do docker-compose
# https://docs.docker.com/compose/install/#install-compose-on-windows-server
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$tag = (Invoke-WebRequest "https://api.github.com/repos/docker/compose/releases/latest" | ConvertFrom-Json)[0].tag_name
# Baixar e instalar a ultima versao disponvel fo docker-compose.
Invoke-WebRequest "https://github.com/docker/compose/releases/download/$tag/docker-compose-Windows-x86_64.exe" -UseBasicParsing -OutFile $Env:ProgramFiles\Docker\docker-compose.exe
