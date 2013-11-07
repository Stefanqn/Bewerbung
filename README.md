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
```Bewerbung_Einzeln.tex``` Anschreiben und CV m�ssen vorher erzeugt werden.  
```Bewerbung_Komplett.tex``` Alles in einem Rutsch, ben�tigt shell-escape. Siehe Kommentar.  

\Bsp-Latex
----------
```Inhalt-Anlagen.tex``` Beispiel Anlagen  
```Inhalt-Anschreiben.tex``` Beispiel Anschreiben  
```Inhalt-CV.tex``` Beispiel Lebenslauf  
```mm.tex``` Max Mustermanns pers�nliche Daten sowie der Pfad des build Verzeichnisses 

ToDos
-----
Da das meine erste Latexvorlage ist, hat sie sicher nicht die Qualit�t, die ihr sonst gewohnt seid. Falls jemand etwas beitragen will nehm' ich gern Patches oder Code an. Folgende Punkte sind mir aktuell ein Dorn im Auge:
*		modernCV Abh�ngigkeit: l�sen --> ein Compilerlauf --> gescheite PDF Refs, wie z.B. Lebenslauf Sektionen im InhaltsVZ 
*		Allgemein Entr�mpeln ;)
*		Unterschiedliche Schriftgr��en und Zeilenabstand unterst�tzten: alles au�er 12pt versaut aktuell das Layout
*		H�bsche Tel.,etc Symbole finden, als Vectorgraphic unter offener Lizenz.
*		Layout einer 2ten Anschreibenseite (Seitenzahl, Fusslinie)


Changelog von isnok
-------------------

* Hab aufgeraeumt.


ToDos (isnok version)
---------------------

* Aufraeumen/Dokumentieren der LaTeX Makros (\mein*, \sig, ...)
* Das erzeugen von (Neben-) Tex/Pdf Dateien aus dem Main-Dokument via `\write18` fuehrt dazu, dass latexmk in einer Schleife laeuft, wenn es mit `--pvc` (continous preview) gestartet wird. Schade, denn damit laesst sich wunderbar LaTeX editieren.
* Ein kleiner toolkit aus meinem alten Bewerbungs-Repo koenne noch hier hinein. Ein paar Shell-Scripte, die aus Bildern (Scans) pdfs (in DIN A4) machen und so.

