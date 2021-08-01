# Docker File

Todo Docker File tem um ponto de partida, ele pode ser uma imagem já existente, ou de uma imagem "Zerada", que seria a imagem que todas as outras partem. O nome dela é [scratch](https://hub.docker.com/_/scratch), que não tem nada, é uma imagem em branco.

Cada comando em nosso DockerFile funciona como um Commit do Git, isso ajuda a ter cache nas Layers, [mais sobre o assunto aqui](/Layer%Cache/Readme.md)


### Principais comandos



### Docker History

Com o comando ``docker history nome-da-imagem `` conseguimos ter todo os histórico de passos usados para criar aquela imagem