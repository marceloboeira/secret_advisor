start:
	bin/rails s -b 0.0.0.0 -p 3210

compose:
	docker-compose up -d

decompose:
	docker-compose down
