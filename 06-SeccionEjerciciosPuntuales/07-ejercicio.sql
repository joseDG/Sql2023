/*
TRAER FECHA DE FACTURA, NRO DE FACTURA, ID DE CLIENTE,
RAZON SOCIAL DEL CLIENTE,
Y MONTO TOTAL VENDIDO.
*/

SELECT Ventas_Fecha AS Fecha, Ventas_NroFactura AS Factura,
		 Ventas_CliID AS Cliente, Cli_RazonSocial AS Nombre,
		 Ventas_Total AS Total 
FROM ventas
	JOIN clientes ON Ventas_CliID = Cli_Id