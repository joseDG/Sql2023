SELECT p.Prod_Id, p.Prod_Descripcion, SUM(vd.VD_Cantidad) AS 'Unidades Vendidas', vd.VD_ProdId 
FROM productos p 
		RIGHT JOIN ventas_detalle vd ON p.Prod_Id = vd.VD_ProdId
GROUP BY vd.VD_ProdId
ORDER BY vd.VD_ProdId