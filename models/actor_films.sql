-- The number of films each actor did. 

SELECT first_name, last_name, count(*) films
FROM "DBT_DEMO_SOURCES"."RAW"."ACTOR" AS a
JOIN "DBT_DEMO_SOURCES"."RAW"."FILM_ACTOR" AS fa USING (actor_id)
GROUP BY actor_id, first_name, last_name
ORDER BY films DESC