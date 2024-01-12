# Postgres
PostgreSQL

## hosting
Headless Postgres https://neon.tech/ Postgres on steroids

## edu
https://pikabu.ru/story/top32_kursov_postgresql_besplatnyie_i_platnyie_variantyi_obucheniya_s_nulya_10886253  
https://selectel.ru/blog/courses/postgresql-for-beginners/  
https://habr.com/ru/amp/publications/785144/  

## install on docker
    docker run -d -p 5432:5432 --name postgres --restart unless-stopped --env
    POSTGRES_DB="your_db" --env
    POSTGRESQL_USER=postgres --env
    POSTGRES_PASSWORD=your_password -v ~/docker/postgres:/var/lib/postgresql/data postgres:13.6-alpine
    
## install on mac
    brew install postgresql
    brew services start postgresql
