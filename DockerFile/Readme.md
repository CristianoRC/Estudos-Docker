# Docker File

Todo Docker File tem um ponto de partida, ele pode ser uma imagem já existente, ou de uma imagem "Zerada", que seria a imagem que todas as outras partem. O nome dela é [scratch](https://hub.docker.com/_/scratch), que não tem nada, é uma imagem em branco.

Cada comando em nosso DockerFile funciona como um Commit do Git, isso ajuda a ter cache nas Layers, [mais sobre o assunto aqui](/Layer%20Cache/Readme.md)


### Principais comandos

[Olhar este Cheatsheet](https://devhints.io/dockerfile)

### Observações

- EXPOSE: o comando serve mais para fins de documentação, ou se você rodar o `` docker run -P `` ele vai adiocnar uma porta aleatório para porta que você avisou que iria expor.

- ENTRYPOINT: configura qual o comando vai ser executado ao iniciar o container, enquanto esse comando estiver rodando, não "crashar", o container vai estar funcionando. Ele pode também ser usado em conjunto com o ``CMD``, o CMD vai funcionar como parâmetros para o comando de entrada.

- ENTRYPOINT: seta qual a pasta que vamos trabalhar, então sempre que você colocar o ./ ou rodar um comando sem falar qual a pasta, ele vai rodar tudo dentro desse wordir. É a mesma coisa que você dar um ``cd`` para a pasta e rodar o comando lá.


- HEALTHCHECK: (estudar sobre)

### Docker History

Com o comando ``docker history nome-da-imagem `` conseguimos ter todo os histórico de passos usados para criar aquela imagem