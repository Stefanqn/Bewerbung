@ECHO OFF
SET file=Bewerbung_Komplett
SET build=build
SET gs="C:\Program Files\gs\gs9.07\bin\gswin64c.exe"
SET tk="pdftk.exe"
SET utf8=_utf8
REM -dCompatibilityLevel=1.5 -> Acrobat 
REM dump_data | dump_data_utf8 | dump_data_fields | dump_data_fields_utf8 | update_info | update_info_utf8 |  

@ECHO ON
del .\%build%\pdfmetadata.txt
%tk% "%build%/%file%.pdf" dump_data%utf8% > "%build%/pdfmetadata.txt"
%gs% -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -dCompatibilityLevel=1.5 -sOutputFile=%build%/%file%-compressed.pdf %build%/%file%.pdf
REM -dPDFSETTINGS=/ebook 
%tk% "%build%/%file%-compressed.pdf" update_info%utf8% "%build%/pdfmetadata.txt" output "%build%/%file%-final.pdf"






