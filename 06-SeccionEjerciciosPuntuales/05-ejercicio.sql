/*Traer la lista de productos vendidos (solo su ID) sin
repeticiones y con el total vendido por cada uno
*/
SELECT VD_ProdId AS Producto,
		SUM((VD_Precio * VD_Cantidad)) AS Total
FROM ventas_detalle
GROUP BY Producto