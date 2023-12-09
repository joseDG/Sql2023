#Cual es el actor o actriz que mas peliculas
#ha filmado
SELECT fa.actor_id AS Id, a.first_naame AS Nombre, a.last_name AS Apellido
FROM film_actor fa
	JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY Id
ORDER BY COUNT(*) DESC
LIMIT 1