SELECT 
    reviews.id,
    title,
    released_year,
    genre,
    CONCAT(
        first_name,
        " ",
        last_name
    ) AS reviewer_name,
    rating AS reviewer_rating
FROM reviews
    JOIN reviewers
        ON reviewers.id = reviews.reviewer_id
    JOIN series
        ON series.id = reviews.series_id
    ORDER BY title;