/*Contar registros*/
/*SELECT COUNT(*) AS registros FROM ventas v WHERE v.Ventas_Fecha = '2018-01-02'*/

/*Suma*/
/*SELECT SUM(v.Ventas_Total) AS Total FROM ventas v  WHERE YEAR(v.Ventas_Fecha = 2018 AND MONTH(v.Ventas_Fecha) = 01*/

/*Venta minima*/
/*SELECT MIN(v.Ventas_Total) AS VtaMinima FROM ventas v  WHERE YEAR(v.Ventas_Fecha) = 2018 AND MONTH(v.Ventas_Fecha) = 01*/


/*Venta Maxima*/
/*SELECT MAX(v.Ventas_Total) AS VtaMinima FROM ventas v  WHERE YEAR(v.Ventas_Fecha) = 2018 AND MONTH(v.Ventas_Fecha) = 01*/

/*PROMEDIO*/
SELECT AVG(v.Ventas_Total) AS VtaMinima FROM ventas v  WHERE YEAR(v.Ventas_Fecha) = 2018 AND MONTH(v.Ventas_Fecha) = 01