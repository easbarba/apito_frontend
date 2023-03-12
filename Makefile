.DEFAULT_GOAL := run
NAME := apito_frontend

deps:
	npm install

fmt:
	npm run format

lint:
	npm run lint

run:
	npm run dev

test:
	npm run test:unit

img:
	podman build -f ./Dockerfile --tag ${USER}/${NAME}:$(shell cat .version)
	podman run --rm ${USER}/${NAME}:$(shell cat .version)

.PHONY: deps run img test
