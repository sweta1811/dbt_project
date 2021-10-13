SELECT CONCAT(customer.last_name, ', ', customer.first_name) AS customer,
           address.phone, film.title
           FROM "DBT_DEMO_SOURCES"."DBT_RAW"."RENTAL" as rental
           INNER JOIN "DBT_DEMO_SOURCES"."DBT_RAW"."CUSTOMER" as customer ON rental.customer_id = customer.customer_id
           INNER JOIN "DBT_DEMO_SOURCES"."DBT_RAW"."ADDRESS" as address ON customer.address_id = address.address_id
           INNER JOIN "DBT_DEMO_SOURCES"."DBT_RAW"."INVENTORY" as inventory ON rental.inventory_id = inventory.inventory_id
           INNER JOIN "DBT_DEMO_SOURCES"."DBT_RAW"."FILM" as film ON inventory.film_id = film.film_id
           WHERE rental.return_date IS NULL
           AND dateadd(day, film.rental_duration , to_timestamp_ltz(rental.rental_date)) < CURRENT_DATE()
           ORDER BY title