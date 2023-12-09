/*SELECT vd.VD_ProdId, p.Prod_Descripcion, COUNT(*) AS ventas FROM ventas_detalle vd, productos p
WHERE p.Prod_Id = vd.VD_ProdId
GROUP BY vd.VD_ProdId*/

/*Ventas del ano 2018 mes por mes*/
SELECT YEAR(v.Ventas_Fecha) AS ano, MONTH(v.Ventas_Fecha) AS mes,  SUM(v.Ventas_Total) AS Total FROM ventas v
GROUP BY ano, mes