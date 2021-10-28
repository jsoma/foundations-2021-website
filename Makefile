targets := $(wildcard *.md **/*.md)

process: $(targets)
	rm -rf output
	mkdir output
	cp -r images output
	cp -r style output
	for file in $^ ; do \
		no_path=$${file##*/}; \
		path_only=$${file%/*}; \
		path_only=$${path_only%%*.*}; \
		base=$${no_path%.*}; \
		mkdir -p "output/$${base}" && pandoc "$${file}" -o "output/$${base}/index.html"  --css "../style/bulma.css" --css "../style/custom.css" -s --template template.html --extract-media .. --toc --toc-depth 2 -V toc-title:"Jump to section" -V subfolder:"$${path_only}"; \
	done	

upload: output/*
	rsync -avz output/* jsoma:/var/www/jonathansoma.com/current/site/course/foundations-2021

