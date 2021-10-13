-- Checking if there are any actor with negative number of films. 

SELECT first_name, last_name, count(*) as films
FROM "DBT_DEMO_SOURCES"."RAW"."ACTOR" AS a
JOIN "DBT_DEMO_SOURCES"."RAW"."FILM_ACTOR" AS fa USING (actor_id)
GROUP BY actor_id, first_name, last_name
having not(films>=0)
ORDER BY films DESC
