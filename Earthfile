VERSION 0.7
FROM texlive/texlive:latest
WORKDIR /cv_build
ARG --global file='mohamedlegheraba'
ARG --global lang='FR'

build:
	BUILD +build-classic

build-classic:
	BUILD +build-fr-classic
	BUILD +build-en-classic

build-fr-classic:
	COPY +build-pollen-tex-fr/mohamedlegheraba.tex .
	DO +BUILD_PDF --file='mohamedlegheraba' --lang='FR'

build-en-classic:
	COPY +build-pollen-tex-en/mohamedlegheraba.tex .
	DO +BUILD_PDF --file='mohamedlegheraba' --lang='EN'

# build-pollen-html:
# 	FROM +pollen
# 	DO +BUILD_POLLEN --file='mohamedlegheraba' --lang='FR' --output_type='html'

build-pollen-tex-fr:
	FROM +pollen
	DO +BUILD_POLLEN --file='mohamedlegheraba' --lang='FR' --output_type='tex'

build-pollen-tex-en:
	FROM +pollen
	DO +BUILD_POLLEN --file='mohamedlegheraba' --lang='EN' --output_type='tex'

pollen:
	FROM racket/racket:8.8-full
	RUN raco pkg install --auto pollen

BUILD_POLLEN:
	COMMAND
	ARG output_type='html'
	COPY ${lang}/pollen.rkt .
	COPY ${lang}/template.${output_type}.p .
	COPY ${lang}/${file}.poly.pm .
	RUN raco pollen render ${file}.${output_type}
	SAVE ARTIFACT --keep-ts ${file}.${output_type} AS LOCAL build/${lang}/${file}.${output_type}

BUILD_PDF:
	COMMAND
	COPY figures figures
	RUN pdflatex ${file}.tex 
	SAVE ARTIFACT --keep-ts ${file}.pdf AS LOCAL build/${lang}/${file}.pdf
