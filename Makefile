
install:
	docker-compose build app

serve:
	docker-compose up -d

migrate:
	docker-compose exec app python /app/forum/manage.py migrate --settings=forum.settings

collectstatic:
	docker-compose exec app python /app/forum/manage.py collectstatic --noinput --settings=forum.settings

shell:
	docker-compose exec app python /app/forum/manage.py shell --settings=forum.settings

terminal:
	docker-compose exec app /bin/bash

dumpdb:
	docker-compose exec db mysqldump -u forumuser -pbbdbe444288550204c968fe7002a97a9 forum > ./forum.sql