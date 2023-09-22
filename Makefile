# ビルド
up-build:
	docker-compose up -d --build
# 起動
up:
	docker-compose up -d
# 停止
down:
	docker-compose down
# 再起動
restart:
	@make down
	@make up
# webコンテナに入る
exec-web:
	docker-compose exec web /bin/bash