--old school band
--script that lists all bands with glam rock

SELECT band_name, IFNULL(split, ' ,  '), 
SUM(lifespan) formed as lifespan,FROM metal_band WHERE style = 'Glam Rock',
RANK() OVER (ORDER BY lifespan DESC), FROM metal_bands;