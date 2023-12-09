#EXPLAIN nos indica las consultas que hacemos a las tablas
EXPLAIN SELECT Prod_ID AS ID, Prod_Descripcion AS Descripcion, Ventas_Fecha AS Fecha, SUM(VD_Cantidad*VD_Precio) AS Vendidos
FROM productos
	JOIN ventas_detalle ON VD_ProdID = Prod_Id
	JOIN ventas ON VD_VentasID = Ventas_ID
WHERE Ventas_Fecha BETWEEN '2018-01-02' AND '2018-01-07'
GROUP BY ID, Descripcion, Fecha
ORDER BY Prod_Id