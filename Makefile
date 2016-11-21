start:
	bin/rails s -b 0.0.0.0 -p 3210

rspec:
	bundle exec rspec

cucumber:
	bundle exec cucumber

test: rspec && cucumber

spec: test

compose:
	docker-compose up -d

decompose:
	docker-compose down
