FROM buildpack-deps:buster-scm
ADD ./olamundo.sh ./olamundo.sh
RUN chmod +x ./olamundo.sh
ENTRYPOINT [ "bash" ]
CMD [ "./olamundo.sh" ]

# ENTRYPOINT [ "echo" ]
# CMD [ "Olá Mundo" ]