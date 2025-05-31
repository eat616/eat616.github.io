.PHONY: docs

docs:
	quarto render
	mkdir -p docs
	rsync -a --delete _site/ docs/
	touch docs/.nojekyll

