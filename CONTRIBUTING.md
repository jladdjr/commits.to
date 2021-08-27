# CONTRIBUTING

## Requirements

### Creating database

Note: commitsto currently requires PostgreSQL 12.

```
dnf install postgresql-server  # pulls in client utilities, too
sudo postgresql-setup --initdb

su - postgres
sudo createdb commitsto
```

### Configuring database access

TBD - need to go through https://www.postgresql.org/docs/12/client-authentication.html

### Database requirements for Django

```
sudo dnf install libpq-devel  # required by psycopg2
```
