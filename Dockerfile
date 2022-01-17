FROM ubuntu:latest
COPY . .
RUN sh setup.sh
EXPOSE 8443
EXPOSE 8080
CMD ["sh", "runme.sh"]