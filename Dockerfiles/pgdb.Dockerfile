FROM postgres:latest

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=StudentDB

COPY SQL/initdb.sql /docker-entrypoint-initdb.d/

CMD ["postgres"]