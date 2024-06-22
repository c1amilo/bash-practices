#!/bin/sh

old_name="20240619"
new_name="20240620"

echo "Archivos que serán renombrados:"
for file in *$old_name*; do
  echo "$file"
done

# Preguntar al usuario si desea continuar
echo "¿Desea continuar con el renombrado de estos archivos? (s/n)"
read respuesta

# Loop through all files that match the pattern
if [ "$respuesta" = "s" ]; then
  for file in *$old_name*; do
    newfile=`echo "$file" | sed "s/$old_name/$new_name/"`
    mv "$file" "$newfile"
  done
  echo "Archivos renombrados:"
  ls -1 *$new_name*
else
  echo "Operación cancelada."
fi

