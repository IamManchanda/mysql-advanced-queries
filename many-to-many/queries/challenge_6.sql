SELECT 
    reviewers.id,
    first_name,
    last_name,
    COUNT(rating) as count_ratings,
    IFNULL(MIN(rating), 0) as min_rating,
    IFNULL(MAX(rating), 0) as max_rating,
    IFNULL(ROUND(AVG(rating), 2), 0) as avg_rating,
    CASE
        WHEN COUNT(rating) >= 10 THEN "POWER USER"
        WHEN COUNT(rating) >= 8 THEN "HIGHLY ACTIVE"
        WHEN COUNT(rating) >= 1 THEN "ACTIVE"
        ELSE "INACTIVE"
    END AS status_reviewers
FROM reviewers
    LEFT JOIN reviews
        ON reviewers.id = reviews.reviewer_id
	GROUP BY reviewers.id;