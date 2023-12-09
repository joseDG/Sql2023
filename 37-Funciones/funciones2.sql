SELECT
	p.Prod_Id, p.Prod_Descripcion, 
	CASE p.Prod_Status 
		WHEN 0  THEN 'Deshabilitadio'
		WHEN 1  THEN  IFNULL((SELECT SUM(vd.VD_Cantidad) FROM ventas_detalle vd WHERE vd.VD_ProdId=p.Prod_Id), 0)
		WHEN 2  THEN 'Otro Estado'
	END AS Estado
FROM productos p