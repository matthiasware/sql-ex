SELECT
	b.name
FROM
	Battles b
WHERE
	DATEPART(year, b.date) NOT IN (
	SELECT
		s.launched
	FROM
		Ships s
	WHERE
		s.launched IS NOT NULL)
