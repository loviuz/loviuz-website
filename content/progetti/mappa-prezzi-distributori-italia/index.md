---
title: Mappa dei prezzi distributori in Italia
description: Mappatura dei prezzi dei distributori in Italia importati dai dati ufficiali del MISE (MInistero dello Sviluppo Economico) dal formato CSV
date: 2022-05-28T19:46:00+02:00
images:
    - fuel-gf6da54ccc_1280.jpg
obiettivo_percent: 90
categories:
    - Mappe
tags:
    - openstreetmap
    - umap
    - benzina
    - italia
# status: new, wip, done
status: wip
---

Mi sono imbattuto nel link del MISE (MInistero dello Sviluppo Economico) tramite il gruppo Telegram di **OpenStreetMap Italia** in cui si parlava di usare gli open data del MISE per aggiornare la mappa di openstreetmap riguardo i distributori.
I file in formato CSV sono scaricabili da qui: https://www.mise.gov.it/index.php/it/open-data/elenco-dataset/2032336-carburanti-prezzi-praticati-e-anagrafica-degli-impianti

I 2 file sono:
- **Prezzo alle 8 di mattina (csv)**: contiene la lista dei prezzi per ciascun impianto e ciascun tipo di carburante
- **Anagrafica degli impianti attivi (csv)**: contiene la lista impianti

Entrambi i file CSV sono legati tra loro dalla colonna **IdImpianto**.

Tramite uno script PHP ho fatto in modo che vengano scaricati entrambi e venga generato un file da importare su uMap in formato [GeoJSON](https://geojson.org/), uno standard aperto per gestire una struttura di dati geografici.

## TO-DO
- avere un server in cui installare lo script e fare in modo che uMap aggiorni i punti ogni volta che ci sono aggiornamenti. Ora il caricamento del file in formato GeoJSON è manuale per cui la mappa non è aggiornata giorno per giorno

## Codice
https://github.com/loviuz/prezzi-distributori-italia-umap

https://gitea.it/loviuz/prezzi-distributori-italia-umap (mirror)