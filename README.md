# Video-Game-Market-Analysis# 🎮 Video Game Market Analysis: Data-Driven Insights (1980-2020)

## 📌 Descrizione del Progetto
Questo progetto nasce dalla volontà di analizzare l'industria videoludica non solo come intrattenimento, ma come un mercato finanziario complesso. Utilizzando **SQL su Google BigQuery**, ho trasformato un dataset di oltre 16.000 titoli in insight azionabili, identificando i pattern di crescita che hanno definito le ultime quattro decadi del settore.

## 🛠️ Metodologia di Analisi
Per ottenere risultati accurati, il progetto è stato diviso in tre fasi tecniche:
1. **Data Cleaning & Normalization**: Pulizia delle stringhe per le date (`Year_of_Release`) e gestione dei valori "N/A" per evitare bias nei calcoli medi.
2. **Competitive Benchmarking**: Utilizzo di `RANK()` e `LAG()` per misurare non solo chi vende di più, ma quanto è difficile per un competitor colmare il gap con il leader di mercato.
3. **Trend Analysis (YoY%)**: Implementazione di calcoli di variazione percentuale per distinguere tra crescita organica del mercato e picchi isolati dovuti a "Killer Titles" (es. franchise iconici).

## 🚀 Key Insights (Analisi dei Risultati)
- **Sinergia Mainstream**: I generi *Action* e *Shooter* presentano una correlazione positiva quasi perfetta. La crescita di uno non cannibalizza l'altro, suggerendo un'espansione costante della base utenti globale.
- **Volatilità di Nicchia**: Generi come *Strategy* e *Puzzle* mostrano cicli di vita indipendenti e "spike" improvvisi. Questo indica che il successo in questi segmenti è legato a innovazioni di gameplay singole piuttosto che a trend di piattaforma.
- **Barriere all'Entrata**: L'analisi del distacco (Gap Analysis) rivela che nelle generazioni dominate da Sony (PS2) e Nintendo (Wii), il secondo classificato faticava a mantenere un market share superiore al 60% del leader, evidenziando forti effetti di rete.

## 📂 Struttura del Repository
- `01_market_share_ranking.sql`: Script per l'analisi competitiva delle piattaforme e dei distacchi di vendita.
- `02_genre_growth_analysis.sql`: Script per il calcolo della crescita percentuale annua e confronto tra segmenti di mercato.

## 💻 Tecnologie Utilizzate
- **Database**: Google BigQuery
- **Linguaggio**: SQL (Standard SQL)
- **Funzioni Avanzate**: CTEs, Window Functions, Safe Casting, Mathematical Dividers.

<img width="450" height="348" alt="image" src="https://github.com/user-attachments/assets/8d77fd50-ccd5-44aa-9444-8ddc9ac99c00" />
<img width="436" height="347" alt="image" src="https://github.com/user-attachments/assets/129dd1b0-72f2-4dbe-a6fd-17ed6a99c8db" />
<img width="450" height="340" alt="image" src="https://github.com/user-attachments/assets/377fe54d-0281-4d16-9bf4-488b6b5f9a3a" />


