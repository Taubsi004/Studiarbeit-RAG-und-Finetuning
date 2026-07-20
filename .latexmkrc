# Kompilierer auf XeLaTeX setzen
$pdf_mode = 1;
$pdflatex = 'xelatex %O %S';

# Alle Ausgabedateien in den build-Ordner schreiben
$aux_dir = 'build';
$out_dir = 'build';

# Sicherstellen, dass der build-Ordner existiert
if (!-e 'build') {
    mkdir 'build';
}

# Zeige nur Fehler an, um das Terminal sauber zu halten
$silent = 0;