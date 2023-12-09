/*
TRAER TODOS LOS PRODUCTOS QUE HAYAN SIDO
VENDIDOS ENTRE EL 14/01/2018 Y EL 
16/01/2018 (SIN REPETIR) Y CALCULANDO LA
CANTIDAD DE UNIDADES VENDIDAS
*/

SELECT Prod_Id AS Codigo,
		 Prod_Descripcion AS Descripcion,
		 SUM(VD_Cantidad) AS 'Unidades Vendidas'
FROM productos
	JOIN ventas_detalle ON VD_ProdId = Prod_Id
	JOIN ventas ON VD_VentasId = Ventas_Id
GROUP BY Codigo