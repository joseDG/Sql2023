SELECT COUNT(*) AS Pelciculas
FROM film f
	JOIN inventory i ON i.film_id = f.film_id
	JOIN rental r ON i.inventory_id = r.inventory_id
WHERE f.film_id IN (SELECT i.film_id FROM film f
								JOIN inventory i ON f.film_id = i.film_id
								WHERE f.rating = 'PG-13' AND i.store_id=2
								GROUP BY i.film_id)AND
		r.customer_id IN (SELECT ren.customer_id FROM (SELECT r.customer_id FROM rental r
								GROUP BY r.customer_id
								ORDER BY COUNT(r.customer_id) DESC
								LIMIT 1) AS ren) AND
		i.store_id = 2