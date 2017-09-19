.PHONY: build run

run:
	docker-compose run --rm -p 3001:3001 dev 

in:
	docker exec -i -t $(shell docker-compose ps | grep run | cut -d" " -f 1) /bin/bash
	
stop:
	docker-compose stop

clean:
	docker-compose down