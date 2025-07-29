Dieses Bash-Skript sammelt folgende Systeminformationen und speichert sie in einer Textdatei:

Allgemeine Systeminfos (Kernel, Architektur etc.)
Detaillierte Hardware- und Systeminfo (muss installiert sein!)
Infos über den Arbeitsspeicher (RAM)
Netzwerkinformationen (IP-Adressen etc.)
Liste aller Benutzerkonten
Liste aller Gruppen im System


Voraussetzung:
Root-Rechte

Schritte:
Speichere den Code in eine Datei, z. B. hardware-info.sh

Mache die Datei ausführbar:
chmod +x hardware-info.sh

Starte das Skript mit sudo:
sudo ./hardware-info.sh

Danach findest du die Datei z. B. unter ./Hardware_Aufnahme/deinhostname-info.txt.
