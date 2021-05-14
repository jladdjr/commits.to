migrate:
	python iwilldo/manage.py migrate

run:
	python iwilldo/manage.py runserver 0:8000

drop_db:
	sudo -u postgres --login dropdb willdo

create_db:
	sudo -u postgres --login createdb willdo

setup_db: create_db migrate

rebuild_db: drop_db create_db migrate

docker_build:
	docker build tools
