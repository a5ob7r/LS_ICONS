SRC := LS_ICONS
DST_SH := lsicons.sh
DST_CSH := lsicons.csh
DSTS := $(DST_SH) $(DST_CSH)

.PHONY: all
all: sh csh

.PHONY: sh
sh:
	dircolors $(SRC) | sed 's/^LS_COLORS/LS_ICONS/' | sed 's/LS_COLORS$$/LS_ICONS/' > $(DST_SH)

.PHONY: csh
csh:
	dircolors -c $(SRC) | sed 's/^setenv LS_COLORS/setenv LS_ICONS/' > $(DST_CSH)

.PHONY: test
test:
	git diff $(DSTS)

.PHONY: lint
lint:
	! grep '^\.' $(SRC)
