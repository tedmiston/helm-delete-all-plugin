.PHONY: install
install:
	cd .. && helm plugin install helm-delete-all-plugin

.PHONY: install-all
install-all: install
	helm plugin install aliases/dela
	helm plugin install aliases/del-all

.PHONY: remove
remove:
	helm plugin remove delete-all

.PHONY: remove-all
remove-all: remove
	helm plugin remove dela
	helm plugin remove del-all
