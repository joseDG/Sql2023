/*
TRAER TODOS LOS ARTICULOS CUYA
DESCRIPCION TENGA EL STRING 'CINTA' Y QUE TENGAN VENTAS
REALIZADAS.
*/
SELECT Prod_Id AS Codigo,
		 Prod_Descripcion AS Descripcion
FROM productos
WHERE EXISTS (SELECT * FROM ventas_detalle WHERE VD_ProdId =) AND
		Prod_Descripcion LIKE '%CINTA%'