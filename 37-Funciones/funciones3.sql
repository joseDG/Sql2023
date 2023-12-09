SELECT p.Prod_Id, p.Prod_Descripcion, CASE SUBSTR(p.Prod_Descripcion,1,1)
													WHEN 'A' THEN 'Letra A'
													WHEN 'B' THEN 'Letra B'
													END AS ejercicio 
FROM productos p