SLIDES_DIR := ./slides
SCRIPT := $(SLIDES_DIR)/build.sh
DIST_DIR := $(SLIDES_DIR)/dist

help:
	$(SCRIPT) help

full:
# 	dos2unix ${SCRIPT}
# 	chmod +x ${SCRIPT}
	$(SCRIPT) build

.PHONY: build
build:
	$(SCRIPT) build $(filter-out $@, $(MAKECMDGOALS))

.PHONY: pdf
pdf:
	$(SCRIPT) pdf $(filter-out $@, $(MAKECMDGOALS))

.PHONY: view
view:
	$(SCRIPT) $(filter-out $@, $(MAKECMDGOALS))

.PHONY: clean

%:
	@:
