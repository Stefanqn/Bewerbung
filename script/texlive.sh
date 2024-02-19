#/bin/bash

GIT_ROOT=$(git rev-parse --show-toplevel)
cd $GIT_ROOT

echo "removing auxillary tex files"
git clean -f -d -X

# arch add texlive-latex
# tlmgr init-usertree
# tlmgr: add --usermode for Arch based distros
# tlmgr install --usermode moderncv
# tlmgr install --usermode etoolbox
# tlmgr install --usermode xcolor
# tlmgr install --usermode microtype
# tlmgr install --usermode adjustbox
# tlmgr install --usermode xkeyval
# tlmgr install --usermode collectbox
# tlmgr install --usermode pdftexcmds
# tlmgr install --usermode infwarerr
# tlmgr install --usermode babel-german
# tlmgr install --usermode lastpage
# tlmgr install --usermode lipsum
# tlmgr install --usermode tabu
# tlmgr install --usermode varwidth
# tlmgr install --usermode datetime
# tlmgr install --usermode fmtcount
# tlmgr install --usermode setspace
# tlmgr install --usermode fontawesome5
# tlmgr install --usermode pgf
# tlmgr install --usermode multirow
# tlmgr install --usermode arydshln
# tlmgr install --usermode ucs
# tlmgr install --usermode opensans
# tlmgr install --usermode fontaxes
# tlmgr install --usermode koma-script
# tlmgr install --usermode layouts
# tlmgr install --usermode marvosym
# tlmgr install --usermode picture
# tlmgr install --usermode eso-pic
# tlmgr install --usermode pdfpages
# tlmgr install --usermode pdflscape
# tlmgr install --usermode currfile
# tlmgr install --usermode filehook
# tlmgr install --usermode filecontents


tlmgr install --usermode pdfpages

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