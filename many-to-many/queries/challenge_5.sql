SELECT 
    series.id,
    title,
    released_year,
    genre,
    ROUND(
        AVG(rating),
        2
    ) as avg_rating
FROM series
    JOIN reviews
        ON series.id = reviews.series_id
    GROUP BY series.id; /* Fails with, genre - error 1055 */