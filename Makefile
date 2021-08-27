migrate:
	python commitsto/manage.py migrate

run:
	python commitsto/manage.py runserver 0:8000

# Database operations

init_db:
	sudo /usr/bin/postgresql-setup --initdb

start_db:
	sudo systemctl start postgresql.service

create_db:
	sudo -u postgres --login createdb commitsto

drop_db:
	sudo -u postgres --login dropdb commitsto

rebuild_db: drop_db create_db migrate

docker_build:
	docker build tools
