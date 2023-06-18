# --customization.dir=<value>
# --filter-stage=<late|early>

build:
	dita --input=service.ditamap \
		--format=pdfkate \
		--temp=R:\ditatemp \
		--output=R:\ \
		--default.language=ru \
		--args.chapter.layout=MINITOC \
		--args.dita.locale=ru \
		--args.indexshow=yes \
		--nav-toc=full \
		--outputFile.base=service \
		--custom-headers-enabled=yes \
		--note-labels-enabled=yes

integrate:
	cd d:\repo\dita-ot-4.0.2\
	ant -f integrator.xml -verbose strict
