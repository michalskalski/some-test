PRODUCTS = \
	p1 \
	p2
PRODUCT ?= p1

FIRST_DB_SCHEMA_VER := 1
GIT_FETCH_ALL := git fetch --all --prune --prune-tags 1>/dev/null
GIT_TAG_PREFIX = $(PRODUCT)/v
LATEST_TAG = $(shell $(GIT_FETCH_ALL); git tag -l --sort=-version:refname "$(GIT_TAG_PREFIX)*" | head -n 1)
LATEST_VERSION = $(subst $(GIT_TAG_PREFIX),,$(LATEST_TAG))

.PHONY: generate-migration
generate-migration:
	@for product in $(PRODUCTS); do \
		$(MAKE) generate-product-migration PRODUCT=$$product; \
	done;

.PHONY: generate-product-migration
generate-product-migration:
	echo $(LATEST_VERSION)
	echo $(LATEST_TAG)

