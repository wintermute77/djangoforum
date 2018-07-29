serve:
	docker-compose up -d

migrate:
	docker-compose exec app python /app/forum/manage.py migrate --settings=forum.settings

collectstatic:
	docker-compose exec app python /app/forum/manage.py collectstatic --settings=forum.settings

shell:
	docker-compose exec app python /app/forum/manage.py shell --settings=forum.settings

terminal:
	docker-compose exec app bin/sh