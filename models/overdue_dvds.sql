SELECT CONCAT(customer.last_name, ', ', customer.first_name) AS customer,
           address.phone, film.title
           FROM {{ ref('rental') }} as rental
           INNER JOIN {{ ref('customer') }} as customer ON rental.customer_id = customer.customer_id
           INNER JOIN {{ ref('address') }} as address ON customer.address_id = address.address_id
           INNER JOIN {{ ref('inventory') }} as inventory ON rental.inventory_id = inventory.inventory_id
           INNER JOIN {{ ref('film') }} as film ON inventory.film_id = film.film_id
           WHERE rental.return_date IS NULL
           AND dateadd(day, film.rental_duration , to_timestamp_ltz(rental.rental_date)) < CURRENT_DATE()
           ORDER BY title