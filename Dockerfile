FROM microsoft/mssql-server-linux:latest

RUN mkdir -p /usr/work
WORKDIR /usr/work

COPY . /usr/work

RUN chmod +x ./import-data.sh

EXPOSE 1433

ENV ACCEPT_EULA Y
ENV SA_PASSWORD V0lum3bu11@n

CMD /bin/bash ./entrypoint.sh