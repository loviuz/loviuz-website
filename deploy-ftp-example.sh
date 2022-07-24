#!/bin/sh

# Creazione file statici per Hugo
hugo --gc

# Eliminazione file generati inutilizzati
find public/ -name \*xcf -exec rm -f "{}" \;
find public/ -name \*jpg -exec rm -f "{}" \;
find public/ -name \*png -exec rm -f "{}" \;

rclone sync --interactive --sftp-host sftp.example.com --sftp-user www-data --sftp-password obscured_password public/ :sftp:/domains/tuosito.it/public_html/
