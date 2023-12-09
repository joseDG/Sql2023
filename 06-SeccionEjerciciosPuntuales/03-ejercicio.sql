SELECT Ventas_Fecha AS Fecha, SUM(Ventas_Total) AS 'Total Vendido'
FROM ventas
GROUP BY Ventas_Fecha