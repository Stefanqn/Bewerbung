#/bin/bash

GIT_ROOT=$(git rev-parse --show-toplevel)
cd $GIT_ROOT

echo "removing auxillary tex files"
git clean -f -d -X

docker run --rm -it -v  ${PWD}:/home adnrv/texlive /bin/bash -c '
cd Vorlage &&
tlmgr update --self &&
tlmgr install babel-german &&
tlmgr install opensans &&
mkdir -p build &&
pdflatex  --output-directory=build/ anschreiben.tex &&
pdflatex  --output-directory=build/ cv.tex &&
pdflatex  --output-directory=build/ anhang.tex &&
pdflatex  --output-directory=build/ Bewerbung_Einzeln.tex &&
pdflatex  --output-directory=build/ --shell-escape ./Bewerbung_Komplett.tex 
'