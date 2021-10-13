-- The number of films each actor did. 

SELECT first_name, last_name, count(*) as films 
FROM {{ ref('actor') }} AS a
JOIN {{ ref('film_actor') }} AS fa USING (actor_id)
GROUP BY actor_id, first_name, last_name
ORDER BY films DESC