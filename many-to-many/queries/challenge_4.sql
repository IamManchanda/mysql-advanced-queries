SELECT 
    series.id,
    title,
    released_year,
    genre
FROM series
    LEFT JOIN reviews
        ON series.id = reviews.series_id
    WHERE rating IS NULL;