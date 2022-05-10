SRC := LS_ICONS
DST_SH := lsicons.sh
DST_CSH := lsicons.csh
DSTS := $(DST_SH) $(DST_CSH)

.PHONY: all
all: sh csh

.PHONY: sh
sh:
	dircolors -b $(SRC) | sed -e 's/^LS_COLORS/LS_ICONS/' -e 's/LS_COLORS$$/LS_ICONS/' | tee $(DST_SH)

.PHONY: csh
csh:
	dircolors -c $(SRC) | sed 's/^setenv LS_COLORS/setenv LS_ICONS/' | tee $(DST_CSH)

.PHONY: test
test:
	git diff --exit-code $(DSTS)

.PHONY: lint
lint:
	{ grep -n '^\.' $(SRC) | tee /dev/fd/3 | while read -r REPLY; do exit 1; done; } 3>&1
