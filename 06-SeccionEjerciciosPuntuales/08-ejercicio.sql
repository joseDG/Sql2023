/*
TRAER FECHA DE FACTURA, NRO DE FACTURA,
ID.DE PRODUCTO, DESCRIPCION DE PRODUCTO,
ID, DE PROVEEDOR, NOMBRE DE PROVEEDOR, 
CANTIDAD, PRECIO UNITARIO Y PARCIAL (cantidad * precio)
*/

SELECT Ventas_Fecha AS Fecha, Ventas_NroFactura AS Factura,
		 VD_ProdId AS Codigo, Prod_Descripcion AS Descripcion,
		 Prod_ProvId AS 'CodProv', Prov_Nombre AS Nombre,
		 VD_Cantidad AS 'Cant', VD_Precio AS Unitario,
		 (VD_Cantidad * VD_Precio) AS Parcial
FROM ventas
	JOIN ventas_detalle ON VD_VentasID = Ventas_ID
	JOIN productos ON VD_ProdId = Prod_Id
	JOIN proveedores ON Prod_ProvId = Prov_Id