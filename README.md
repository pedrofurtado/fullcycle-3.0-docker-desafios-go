# Full Cycle 3.0 > Docker > Desafios > Go

A imagem é disponibilizada automaticamente, via pipeline CI/CD, no DockerHub.

A imagem pode ser acessada em: https://hub.docker.com/r/pedrofurtado/fullcycle-3-0-docker-desafios-go

## Instruções para executar do DockerHub

```bash
# Baixar a imagem
docker pull pedrofurtado/fullcycle-3-0-docker-desafios-go

# Checar o tamanho da imagem
docker image ls | grep -i 'pedrofurtado/fullcycle-3-0-docker-desafios-go'

# Execução do container
docker container run --rm -it pedrofurtado/fullcycle-3-0-docker-desafios-go:latest
```

## Instruções para executar no PC

```bash
# Entrar na pasta-raiz do repositório
cd fullcycle-3.0-docker-desafios-go/

# Executar o build da imagem
docker build -t pedrofurtado-fullcycle-3-0-docker-desafios-go:latest -f Dockerfile .

# Checar o tamanho da imagem
docker image ls | grep -i 'pedrofurtado-fullcycle-3-0-docker-desafios-go'

# Execução do container
docker container run --rm -it pedrofurtado-fullcycle-3-0-docker-desafios-go:latest
```
