# stun
Repositório de um servidor STUN rodando em container Docker

Descrição
-----------

Esse container foi criado para se hospedar um servidor STUN em uma maquina contendo duas interfaces de rede com IPs distintos.

**Necessário Docker instalado na máquina**
Referência para instalação: https://docs.docker.com/install/

**Como usar:**

1) Utilizar o comando docker-compose para o start do container

```
docker-compose up -d
```

**Dicas:**

1) Interfaces de rede:
Verificar se a maquina HOST possui duas interfaces de rede e se ambas tem um IP atribuido.

``
