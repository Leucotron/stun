# stun
Repositório de um servidor STUN rodando em container Docker

Descrição
-----------

Esse container foi criado para se hospedar um servidor STUN em uma maquina contendo duas interfaces de rede com IPs distintos.

**Necessário Docker e docker-compose instalados na máquina HOST**
Referência para instalação: https://docs.docker.com/install/

**Como usar:**

1) Baixar o repositório GIT:

```
git clone https://github.com/Leucotron/stun.git
```

2) Utilizar o comando docker-compose para instalar o container

```
cd stun/
docker-compose up -d
```

**Dicas:**

1) Interfaces de rede:
Verificar se a maquina HOST possui duas interfaces de rede e se ambas tem um IP atribuido.
