# Proyecto Construcción Dashboard Fifa25

### Descipción

En caso de usar el servicio en python:

    $ sudo pip install virtualenv
    $ virtualenv -p python3 <<nombre_ambiente>>
    $ cd <<nombre_ambiente>>
    $ source bin/activate

### .env

Archivo <b>.env</b>

DB="sqlite3:db/fifa25.db"

### Migraciones

Migraciones con DBMATE - accesos/sqlite3:

    $ npm run dbmate:new <<nombre_de_migracion>>
    $ npm run dbmate:up
    $ npm run dbmate:rollback

---

Integrantes:

+ 