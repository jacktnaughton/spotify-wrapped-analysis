-- Rename columns (only run once)
ALTER TABLE year_wrapped RENAME COLUMN "endTime" TO end_time;
ALTER TABLE year_wrapped RENAME COLUMN "artistName" TO artist_name;
ALTER TABLE year_wrapped RENAME COLUMN "trackName" TO track_name;
ALTER TABLE year_wrapped RENAME COLUMN "msPlayed" TO ms_played;

-- Cleaned query
SELECT 
    end_time AS date,
    EXTRACT(YEAR FROM end_time) AS year, 
    TRIM(TO_CHAR(end_time, 'Mon')) AS month,
    TRIM(TO_CHAR(end_time, 'Dy')) AS day,
    EXTRACT(HOUR FROM end_time) AS hour,
    EXTRACT(MINUTE FROM end_time) AS minute,
    artist_name, 
    track_name, 
    (ms_played / 1000.0) AS sec_played 
FROM year_wrapped
WHERE ms_played >= 10000
  AND artist_name IS NOT NULL 
  AND artist_name != '';
