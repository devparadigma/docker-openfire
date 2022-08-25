all: build

build:
	@docker build --tag=devparadigma/openfire .

release: build
	@docker build --tag=devparadigma/openfire:$(shell cat VERSION) .
