# Health Check

As vezes precisamos esperar um serviço estar no ar para podermos subir o outro, mas, só o container subir não adianta, precisamos ter o container no ar e o serviço funcionando. Tive um problema relacionado a isso com o RabbitMQ e um consumer, onde o Rabbit criava o container em 1s, mas, levava uns 30 para ficar no ar, para resolver o problema inicialmente fui no dependes, mas só ele não adianta.

Precisamos criar um depends on, mas que tenha a condição de health check.

```docker
depends_on:
    rabbitmq:
    condition: service_healthy
```

Na configuração do serviço(RabbitMQ), temos que configurar as métricas de quanats vezes e em quanto tempo o health check vai rodar, e também qual o comando será usado para testar.

```docker
healthcheck:
    test: ["CMD", "rabbitmq-diagnostics", "-q", "ping"]
    interval: 5s
    timeout: 10s
    retries: 5
```

[Exemplo](https://github.com/CristianoRC/Estudos-RabbitMQ/blob/main/docker-compose.yml)
