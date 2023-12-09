/*Traer el total vendido por ano y mes de factura*/
SELECT YEAR(Ventas_Fecha) AS Ano,
		 MONTH(Ventas_Fecha) AS Mes,
		 SUM(Ventas_Total) AS 'Total Vendido'
FROM ventas
GROUP BY Ano, Mes