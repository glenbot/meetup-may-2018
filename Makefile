BINDIR = "${HOME}/.bin"

install: setup install-scripts install-bashrc

setup:
	mkdir -p "${BINDIR}"

install-scripts:
	if [ ! -L "${BINDIR}/uuidhex" ]; then \
		ln -s "${PWD}/scripts/uuidhex.py" "${BINDIR}/uuidhex"; \
	fi
	if [ ! -L "${BINDIR}/literal_newline" ]; then \
		ln -s "${PWD}/scripts/literal_newline.py" "${BINDIR}/literal_newline"; \
	fi

install-bashrc:
	if [ ! -L "${HOME}/.bashrc" ]; then rm "${HOME}/.bashrc"; fi
	ln -s "${PWD}/bash/bashrc" "${HOME}/.bashrc"
