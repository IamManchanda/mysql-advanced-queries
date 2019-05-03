SELECT * FROM series
    JOIN reviews
        ON series.id = reviews.series_id;