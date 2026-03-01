/* ANALISI DELLA CRESCITA DEI GENERI (YoY%)
Obiettivo: Calcolare la variazione percentuale delle vendite per Genre.
Tecniche: Window Functions, SAFE_DIVIDE, Calcoli Percentuali.
*/

WITH VenditeAnnueGenere AS (
    -- Sommiamo le vendite per Genere e Anno
    SELECT 
        Year_of_Release, 
        Genre, 
        SUM(Global_Sales) AS VenditeAnnue
    FROM `analisi_videogiochi.vendite`
    WHERE Year_of_Release IS NOT NULL AND Year_of_Release != 'N/A'
    GROUP BY 1, 2
),
TrasformazioneDati AS (
    -- Recuperiamo il dato dell'anno precedente per ogni specifico genere
    SELECT *, 
        LAG(VenditeAnnue) OVER (PARTITION BY Genre ORDER BY Year_of_Release ASC) AS VenditeAnnoPrecedente
    FROM VenditeAnnueGenere
)
-- Calcolo finale della crescita percentuale
SELECT *,
    ROUND(
        SAFE_DIVIDE((VenditeAnnue - VenditeAnnoPrecedente), VenditeAnnoPrecedente) * 100, 
        2
    ) AS Perc_Incremento
FROM TrasformazioneDati
WHERE Genre IN ('Action', 'Shooter', 'Strategy', 'Puzzle')
  AND SAFE_CAST(Year_of_Release AS INT64) >= 2000 -- Focus sull'era moderna
ORDER BY Year_of_Release ASC, Genre ASC;
