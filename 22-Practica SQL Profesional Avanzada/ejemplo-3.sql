#Que empleado del staff ha alquilado mas peliculas
de la actriz del ejercicio 2
SELECT s.staff_id, s.first_name, s.last_name
FROM staff s
	JOIN rental r ON r.staff_id = s.staff_id
	JOIN inventory i ON r.inventory_id = i.inventory_id
	JOIN film f ON f.film_id = i.film_id
	JOIN film_actor fa ON fa.film_id = f.film_id
WHERE fa.actor_id = 107
GROUP BY s.staff_id
ORDER BY COUNT(*) DESC
LIMIT 1
