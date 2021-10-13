-- Checking if there are any actor with negative number of films. 

SELECT first_name, last_name, count(*) as films
FROM {{ ref('actor') }} AS a
JOIN {{ ref('film_actor') }} AS fa USING (actor_id)
GROUP BY actor_id, first_name, last_name
having not(films>=0)
ORDER BY films DESC
