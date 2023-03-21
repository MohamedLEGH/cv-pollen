VERSION 0.7
FROM texlive/texlive:latest
WORKDIR /cv_build
ARG --global file='mohamedlegherabaFR'

build:
	BUILD +build-classic
	BUILD +build-onepage	

build-classic:
	BUILD +build-fr-classic
	BUILD +build-en-classic

build-onepage:
	BUILD +build-fr-onepage
	BUILD +build-en-onepage

build-fr-classic:
	COPY +build-pollen-tex/mohamedlegherabaFR.tex .
	DO +BUILD_PDF --file='mohamedlegherabaFR'

build-en-classic:
	DO +BUILD_PDF --file='mohamedlegherabaEN'

build-fr-onepage:
	DO +BUILD_PDF --file='mohamedlegherabaFRonepage'

build-en-onepage:
	DO +BUILD_PDF --file='mohamedlegherabaENonepage'

build-pollen-html:
	FROM +pollen
	DO +BUILD_POLLEN --file='mohamedlegherabaFR' --output_type='html'

build-pollen-tex:
	FROM +pollen
	DO +BUILD_POLLEN --file='mohamedlegherabaFR' --output_type='tex'

pollen:
	FROM racket/racket:8.8-full
	RUN raco pkg install --auto pollen

BUILD_POLLEN:
	COMMAND
	ARG output_type='html'
	COPY pollen.rkt .
	COPY template.${output_type}.p .
	COPY ${file}.poly.pm .
	RUN raco pollen render ${file}.${output_type}
	SAVE ARTIFACT --keep-ts ${file}.${output_type} AS LOCAL build/${file}.${output_type}

BUILD_PDF:
	COMMAND
	COPY figures figures
	RUN pdflatex ${file}.tex 
	SAVE ARTIFACT --keep-ts ${file}.pdf AS LOCAL build/${file}.pdf
