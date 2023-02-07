#!/bin/bash

wget https://github.com/ciribob/DCS-SimpleRadioStandalone/releases/download/2.0.8.3/SRS-AutoUpdater.exe
read -p "*** Now we will install SRS, click yes to change options and then deselect the option to Install DCS Client Scripts and then click install/update. Press any key to continue ***"
wine SRS-AutoUpdater.exe &> /dev/null
read -p "*** Install SRS and only when done press enter ***"
rm SRS-AutoUpdater.exe
echo "*** Instalation complete! ***"
