up:     ## Crea los servicios (PostgreSQL )
	docker compose up -d

down:   ## Detiene y remueve los servicios (PostgreSQL )
	docker compose down

start:  ## Inicia los servicios (PostgreSQL )
	docker compose start

stop:   ## Apaga los servicios (PostgreSQL )
	docker compose stop

help: # Tomado de http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help

.PHONY: help up down stop start
