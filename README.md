Bewerbung
=========
Latex Bewerbungsvorlage konform zu DIN5008. Siehe [PDF Beispiel](https://github.com/Stefanqn/Bewerbung/blob/master/Fertiges-PDF/Bewerbung_Komplett.pdf?raw=true). 
 
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
```BewerberInfos.tex``` Max Mustermanns persönliche Daten sowie der Pfad des build Verzeichnisses 

\Limitierungen
-----
Folgende Punkte sind mir aktuell ein Dorn im Auge:
*		modernCV Abhängigkeit: lösen --> ein Compilerlauf --> gescheite PDF Refs, wie z.B. Lebenslauf Sektionen im InhaltsVZ 
*		Unterschiedliche Schriftgrößen und Zeilenabstand werden nicht unterstützt: alles außer 12pt verunstaltet das Layout
*		Layout einer 2ten Anschreibenseite passt nicht (Seitenzahl, Fusslinie)

\Notizen
----------
Für das Bewerbungsfoto: Verhältnis 3:2 


