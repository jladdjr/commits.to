migrate:
	python commitsto/manage.py migrate

run:
	python commitsto/manage.py runserver 0:8000

drop_db:
	sudo -u postgres --login dropdb commitsto 

create_db:
	sudo -u postgres --login createdb commitsto 

setup_db: create_db migrate

rebuild_db: drop_db create_db migrate

docker_build:
	docker build tools
