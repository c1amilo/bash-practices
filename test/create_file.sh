#!/bin/sh

# Lista de nombres de archivos a crear
files="
documentoA_20240618.txt
informeB_20240618.pdf
reporteC_20240618.docx
archivoD_20240618.csv
registroE_20240618.xlsx
imagenF_20240618.jpg
videoG_20240618.mp4
audioH_20240618.mp3
presentacionI_20240618.pptx
contratoJ_20240618.doc
"

# Crear archivos vacíos con los nombres especificados
for file in $files; do
    touch "$file"
done

echo "Files created"
ls -1 *_20240618.*
