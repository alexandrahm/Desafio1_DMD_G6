/*2. La Florister�a "Fiorella" quiere saber c�mo se compran sus productos, y tiene la data
de tres departamentos del pa�s, por lo cual les pide su opini�n sobre qu� productos sobresalen,
que combinaciones son mejores y quieren este estudio por departamento y tambi�n por pa�s.*/

--Usamos la tabla
use Fiorella;

--Analisis para sucursal en San Salvador
select * from flores_sa;

--Query para saber que articulo habia comprado cada cliente
select id as Cliente, Articulo, Venta
from flores_sa
UNPIVOT ( 
	Venta for Articulo in (Rosas, Claveles, Macetas, Tierra, Girasoles, Hortensia, Globos, Tarjetas, fOrqu�dias, Carmes�, Lirios, Aurora, Tulipanes, List�n)
	) as UnpivotedData 
where Venta = 1;

--Para ver el total de ventas de un articulo
SELECT 'Total' AS CombinacionFlores, COUNT(*) AS TotalVentas
FROM flores_sa
UNPIVOT (
    Venta FOR Flor IN (Rosas, Claveles, Macetas, Tierra, Girasoles, Hortensia, Globos, Tarjetas, fOrqu�dias, Carmes�, Lirios, Aurora, Tulipanes, List�n)
) AS UnpivotedData
WHERE Venta = 1
UNION ALL
SELECT Flor AS CombinacionFlores, COUNT(*) AS TotalVentas
FROM flores_sa
UNPIVOT (
    Venta FOR Flor IN (Rosas, Claveles, Macetas, Tierra, Girasoles, Hortensia, Globos, Tarjetas, fOrqu�dias, Carmes�, Lirios, Aurora, Tulipanes, List�n)
) AS UnpivotedData
WHERE Venta = 1
GROUP BY Flor
ORDER BY TotalVentas DESC;

--Para saber cual fue la combinaci�n m�s vendida en sucursal San Salvador
	SELECT TOP 1
    Rosas,
    Claveles,
    Macetas,
    Tierra,
    Girasoles,
    Hortensia,
    Globos,
    Tarjetas,
    fOrqu�dias,
    Carmes�,
    Lirios,
    Aurora,
    Tulipanes,
    List�n,
    COUNT(*) AS TotalVentas
FROM flores_sa
GROUP BY
    Rosas,
    Claveles,
    Macetas,
    Tierra,
    Girasoles,
    Hortensia,
    Globos,
    Tarjetas,
    fOrqu�dias,
    Carmes�,
    Lirios,
    Aurora,
    Tulipanes,
    List�n
ORDER BY TotalVentas DESC;

--Respuesta: La combinaci�n m�s vendida fue: Girasoles, Tarjetas, Orquideias, Auroras y Tulipanes repitiendose est� combinaci�n dos veces

--Analisis para sucursal en San Miguel

select * from flores_sm;

SELECT TOP 1
    Rosas,
    Claveles,
    Macetas,
    Tierra,
    Girasoles,
    Hortensia,
    Globos,
    Tarjetas,
    fOrqu�dias,
    Carmes�,
    Lirios,
    Aurora,
    Tulipanes,
    List�n,
    COUNT(*) AS TotalVentas
FROM flores_sm
GROUP BY
    Rosas,
    Claveles,
    Macetas,
    Tierra,
    Girasoles,
    Hortensia,
    Globos,
    Tarjetas,
    fOrqu�dias,
    Carmes�,
    Lirios,
    Aurora,
    Tulipanes,
    List�n
ORDER BY TotalVentas DESC;

--Respuesta: La combinaci�n m�s vendida fue: Tierra, Hortensias, Orquidias, Auroras y Tulipanes repitiendose est� combinaci�n dos veces

--Analisis para sucursal en Santa Ana

select * from flores_sa;

SELECT TOP 1
    Rosas,
    Claveles,
    Macetas,
    Tierra,
    Girasoles,
    Hortensia,
    Globos,
    Tarjetas,
    fOrqu�dias,
    Carmes�,
    Lirios,
    Aurora,
    Tulipanes,
    List�n,
    COUNT(*) AS TotalVentas
FROM flores_sa
GROUP BY
    Rosas,
    Claveles,
    Macetas,
    Tierra,
    Girasoles,
    Hortensia,
    Globos,
    Tarjetas,
    fOrqu�dias,
    Carmes�,
    Lirios,
    Aurora,
    Tulipanes,
    List�n
ORDER BY TotalVentas DESC;

--Respuesta: La combinaci�n m�s vendida fue: Girasoles, Tarjetas, Orquidias, Auroras y Tulipanes repitiendose est� combinaci�n dos veces.
