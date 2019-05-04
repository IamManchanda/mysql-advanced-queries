SELECT
	series.id,
    title,
    released_year,
    genre,
    AVG(rating) as avg_rating
FROM series
    JOIN reviews
        ON series.id = reviews.series_id
    GROUP BY series.id
    ORDER BY avg_rating;
