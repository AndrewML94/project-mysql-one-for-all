SELECT
  CASE
    WHEN us.age <= 30 THEN 'Até 30 anos'
    WHEN us.age <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END faixa_etaria,
COUNT(DISTINCT us.id_user) total_pessoas_usuarias,
COUNT(fav.user) total_favoritadas
FROM user us
LEFT JOIN favorite fav
ON fav.user = us.id_user
GROUP BY faixa_etaria
ORDER BY faixa_etaria;