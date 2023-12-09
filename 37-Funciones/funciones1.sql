SELECT
	p.Prod_Id, p.Prod_Descripcion, IF(Prod_Status=1, 'Habilitado','Deshabilitado') AS Estado
FROM productos p