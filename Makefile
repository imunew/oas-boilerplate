run:
	docker-compose up --build

lint:
	docker-compose run --rm swagpack node ./validate.js
