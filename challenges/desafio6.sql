SELECT CONVERT(MIN(FORMAT(p.plan_value, 2)), CHAR) faturamento_minimo, CONVERT(MAX(p.plan_value), CHAR) faturamento_maximo, CONVERT(ROUND(SUM(p.plan_value) / 10, 2), CHAR) faturamento_medio, CONVERT(ROUND(SUM(p.plan_value), 2), CHAR) faturamento_total
FROM plan p
INNER JOIN user u
ON u.plan = p.id_plan;