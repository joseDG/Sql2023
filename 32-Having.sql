SELECT vd.VD_ProdId, p.Prod_Descripcion, COUNT(*) AS ventas FROM ventas_detalle vd, productos p
WHERE p.Prod_Id = vd.VD_ProdId
GROUP BY vd.VD_ProdId HAVING ventas > 100
ORDER BY ventas DESC