-- Find all hosts that have an email address

SELECT
    u.email,
    uc.is_chain_admin
FROM users AS u
    JOIN user_chains AS uc ON uc.user_id = u.id
GROUP BY u.id
HAVING
    uc.is_chain_admin = TRUE
    AND u.email is not NULL