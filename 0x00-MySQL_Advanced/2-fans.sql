--best band ever
--a script that ranks country origin of bands
--ordered by the number of (non-unique) fans

SELECT origins, SUM(fans) as nb_fans, RANK() OVER (ORDER BY nb_fans DESC) FROM metal_bands;