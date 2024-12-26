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

Fuentes:

+ https://github.com/pepeul1191/flask-boilerplate-v2
+ https://www.pylint.org/#install
+ https://stackabuse.com/reading-and-writing-yaml-to-a-file-in-python/
+ https://github.com/pepeul1191/python-bottle-boilerplate


---

Fuentes:

+ https://github.com/codzsword/bootstrap-admin-dashboard/tree/main
+ https://www.youtube.com/watch?v=4VN8ZdDse9M