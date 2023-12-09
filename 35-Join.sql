SELECT v.Ventas_NroFactura, c.Cli_Id, c.Cli_RazonSocial, p.Prod_Id, p.Prod_Descripcion  FROM productos p
	JOIN ventas_detalle vd ON vd.VD_ProdId = p.Prod_Id AND vd.VD_Costo > 1000
	JOIN proveedores pr ON pr.Prov_Id = p.Prod_ProvId AND pr.Prov_Status = 1
	JOIN ventas v ON vd.VD_VentasId = v.Ventas_Id AND v.Ventas_Fecha BETWEEN '2018-01-22' AND '2018-01-24'
	JOIN clientes c ON v.Ventas_CliId = c.Cli_Id