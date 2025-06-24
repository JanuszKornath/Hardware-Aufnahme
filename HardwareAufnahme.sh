#!/bin/bash

# Überprüfe, ob das Skript mit root-Rechten ausgeführt wird
if [ "$(id -u)" -ne 0 ]; then
  echo "Das Skript muss mit root-Rechten ausgeführt werden. Bitte mit sudo erneut versuchen."
  exit 1
fi

# Hostname abrufen
hostname=$(uname -n)

# Verzeichnis erstellen, wenn es nicht existiert
output_dir="./Hardware_Aufnahme"
if [ ! -d "$output_dir" ]; then
  mkdir -m 777 -p "$output_dir"
fi

# Dateiname erstellen
output_file="$output_dir/$hostname-info.txt"

# Befehle ausführen und Ausgabe in die Textdatei schreiben
echo "### uname ###" > "$output_file"
uname -a >> "$output_file"

echo -e "\n### inxi ###" >> "$output_file"
inxi -Fx >> "$output_file"

echo -e "\n### dmidecode ###" >> "$output_file"
dmidecode --t 17 >> "$output_file"

echo -e "\n### ip a ###" >> "$output_file"
ip a >> "$output_file"

echo -e "\n### /etc/passwd ###" >> "$output_file"
cut -d: -f1 /etc/passwd >> "$output_file"

echo -e "\n### /etc/group ###" >> "$output_file"
cat /etc/group >> "$output_file"

# Meldung ausgeben
echo "Informationen wurden in $output_file gespeichert."
