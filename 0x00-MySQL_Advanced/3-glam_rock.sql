--old school band
--script that lists all bands with glam rock

SELECT band_name,
  COALESCE(IFNULL(split, '2020') - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;