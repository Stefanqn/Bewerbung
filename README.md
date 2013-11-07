Bewerbung
=========
Latex Bewerbungsvorlage konform zu DIN5008. Siehe [PDF Beispiel](https://github.com/Stefanqn/Bewerbung/blob/master/Fertiges-PDF/Bewerbung_Komplett.pdf?raw=true). [Bier-](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MZEBQZGWBTVVG)
 oder noch besser Quellcodespenden sind herzlich willkommen ;)
 
 Diskussion
----------
[Google Group](https://groups.google.com/forum/#!forum/latex-bewerbungsvorlage)   
[Golatex Forum (alt)](http://www.golatex.de/bewerbungsvorlage-anschreiben-koma-lebenslauf-moderncv-t10684.html)

\Vorlage
--------
```anschreiben.tex``` Anschreiben einzeln  
```cv.tex``` Lebenslauf einzeln  
```Bewerbung_Einzeln.tex``` Anschreiben und CV müssen vorher erzeugt werden.  
```Bewerbung_Komplett.tex``` Alles in einem Rutsch, benötigt shell-escape. Siehe Kommentar.  

\Bsp-Latex
----------
```Inhalt-Anlagen.tex``` Beispiel Anlagen  
```Inhalt-Anschreiben.tex``` Beispiel Anschreiben  
```Inhalt-CV.tex``` Beispiel Lebenslauf  
```mm.tex``` Max Mustermanns persönliche Daten sowie der Pfad des build Verzeichnisses 

ToDos
-----
Da das meine erste Latexvorlage ist, hat sie sicher nicht die Qualität, die ihr sonst gewohnt seid. Falls jemand etwas beitragen will nehm' ich gern Patches oder Code an. Folgende Punkte sind mir aktuell ein Dorn im Auge:
*		modernCV Abhängigkeit: lösen --> ein Compilerlauf --> gescheite PDF Refs, wie z.B. Lebenslauf Sektionen im InhaltsVZ 
*		Allgemein Entrümpeln ;)
*		Unterschiedliche Schriftgrößen und Zeilenabstand unterstützten: alles außer 12pt versaut aktuell das Layout
*		Hübsche Tel.,etc Symbole finden, als Vectorgraphic unter offener Lizenz.
*		Layout einer 2ten Anschreibenseite (Seitenzahl, Fusslinie)


Changelog von isnok
-------------------

* Zuerst mal hab ich das mit den allgemeinen Bewerberdaten (noch nicht final) aufgeraeumt.
* Dabei ist ein nettes Feature entstanden, das aber wahrscheinlich nur unter Linux funktioniert (basiert auf Symlinks). Man kann den Bewerber via Link austauschen.
* Dann habe ich noch die .sty Dateien verschoben, aber die Ordnerstruktur ist generell noch nicht ganz zufiredenstellend.
* Bin dabei, das ganze (fuer Linux) mit etwas 'Workflow' zu versehen, da man ja eh meist mehr als eine Bewerbung schreibt.

So funktioniert das bei mir (isnok)
-----------------------------------

* Ich navigiere mich in der shell in den Ordner `Tex` und gebe dort `./neu.sh EineNeueFirma` ein.
* Daraufhin kopiert mir das script die Vorlage in den Ordner `Tex/EineNeueFirma`. Die Vorlage enthaelt `Anschreiben.tex` und `Bewerbung.tex` (Anschreiben+Lebenslauf+Anlagen). Der Bewerber-Link zeigt auf mein directory, dadurch werden Lebenslauf und Anlagen erstmal von dort uebernommen.
* Moechte ich fuer eine spezielle Bewerbung den Lebenlauf oder die Anlagen anpassen, so kopiere ich einfach deren `.tex` oder fetige `.pdf`-Dateien aus meinem Bewerber-Ordner in das Bewerbungsverzeichnis. Diese speziellen Versionen ueberschreiben die allgemeinen aus dem Bewerberverzeichnis.
* Habe ich dann ein Anschreiben (und eventuell spezielle Anlagen, etc.) zusammen, so habe ich drei Moeglichkeiten das ganze zu kompilieren: `pdflatex -shell-escape` von Hand, oder `make` oder sogar `latexmk --pdf` (siehe todos).

ToDos (isnok version)
---------------------

* Ordnerstruktur nochmal schoen machen. Das aktuelle funktioniert (immerhin :), krankt aber noch an einiger frickelei mit Berechtigungen in Unter/Parent-Ordnern zu lesen/schreiben.
* Ein kleiner toolkit aus meinem alten Bewerbungs-Repo moechte noch hier hinein. Es geht um ein paar Shell-Scripte, die aus Bildern (Scans) pdfs (in DIN A4) machen koennen.

