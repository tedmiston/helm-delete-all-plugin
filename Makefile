name := delete-all
name_q := del-all  # quiet
name_qq := dela  # extra quiet

.PHONY: install
install:
	helm plugin install $(shell pwd)

.PHONY: install-all
install-all: install
	helm plugin install aliases/$(name_qq)
	helm plugin install aliases/$(name_q)

.PHONY: remove
remove:
	helm plugin remove $(name)

.PHONY: remove-all
remove-all: remove
	helm plugin remove $(name_qq)
	helm plugin remove $(name_q)
