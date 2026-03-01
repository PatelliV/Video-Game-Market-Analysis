/* ANALISI DELLE PERFORMANCE DELLE PIATTAFORME
Obiettivo: Classificare le console per vendite annuali e calcolare il distacco dal leader.
Tecniche: CTE, RANK(), LAG().
*/

WITH VenditeAnnuali AS (
    -- Aggreghiamo le vendite globali per anno e piattaforma
    SELECT 
        Year_of_Release, 
        Platform, 
        SUM(Global_Sales) as SommaVendite
    FROM `analisi_videogiochi.vendite`
    WHERE Year_of_Release IS NOT NULL AND Year_of_Release != 'N/A'
    GROUP BY 1, 2
),
ClassificaFinale AS (
    -- Creiamo la classifica e recuperiamo il valore della piattaforma precedente
    SELECT *, 
        RANK() OVER(PARTITION BY Year_of_Release ORDER BY SommaVendite DESC) AS ClassificaVendite, 
        LAG(SommaVendite) OVER(PARTITION BY Year_of_Release ORDER BY SommaVendite DESC) AS VenditePrecedente
    FROM VenditeAnnuali
)
-- Calcoliamo il distacco (Gap) tra una posizione e l'altra
SELECT *,
    (VenditePrecedente - SommaVendite) AS DistaccoDalSuperiore
FROM ClassificaFinale
WHERE ClassificaVendite <= 3 -- Ci concentriamo sul "Podio"
ORDER BY Year_of_Release DESC, ClassificaVendite ASC;
