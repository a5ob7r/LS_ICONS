SRC := LS_ICONS

all: sh csh

sh:
	dircolors $(SRC) | sed 's/^LS_COLORS/LS_ICONS/' | sed 's/LS_COLORS$$/LS_ICONS/' > lsicons.sh

csh:
	dircolors -c $(SRC) | sed 's/^setenv LS_COLORS/setenv LS_ICONS/' > lsicons.csh
