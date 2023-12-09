/*SELECT * FROM productos p WHERE p.Prod_Id NOT IN (4,8,10,16)*/


/*SELECT * FROM productos p WHERE p.Prod_Id IN(SELECT DISTINCTROW(vd.VD_ProdId) AS producto FROM ventas_detalle vd)*/

/*Clientes que an comprado mas d euna vez*/
SELECT * FROM clientes c WHERE c.Cli_Id IN(SELECT DISTINCTROW(v.Ventas_CliId) FROM ventas v WHERE v.ventas_Total>1000)