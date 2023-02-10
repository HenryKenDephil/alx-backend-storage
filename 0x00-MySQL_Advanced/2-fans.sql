--best band ever
--a script that ranks country origin of bands
--ordered by the number of (non-unique) fans

SELECT origins as origin,
    SUM(fans) as nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;