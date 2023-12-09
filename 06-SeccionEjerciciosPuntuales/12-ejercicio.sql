/*
TRAER TODOS LOS ARTICULOS QUE EN
SU DESCRIPCION O COLOR O NOMBRE
DE PROVEEDOR TENGA EL STRING
'FERRO'
*/

SELECT Prod_Id AS codigo,
		 Prod_Descripcion AS Descripcion,
		 Prov_Nombre AS Proveedor
FROM productos
	JOIN proveedores ON Prod_ProvId = Prov_Id
WHERE CONCAT(Prod_Descripcion,Prov_Nombre) LIKE '%FERRO%'
