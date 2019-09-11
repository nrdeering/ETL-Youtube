SELECT c.video_rank, c.video_id, c.title, c.country_id FROM "CA_Videos" c
WHERE (c.video_id LIKE 'xTlNMmZKwpA' OR c.video_id LIKE 'aJOTlE1K90k')
UNION ALL
SELECT u.video_rank, u.video_id, u.title, u.country_id FROM "US_Videos" u
WHERE (u.video_id LIKE 'xTlNMmZKwpA' OR u.video_id LIKE 'aJOTlE1K90k')
UNION ALL
SELECT m.video_rank, m.video_id, m.title, m.country_id FROM "MX_Videos" m
WHERE (m.video_id LIKE 'xTlNMmZKwpA' OR m.video_id LIKE 'aJOTlE1K90k')
UNION ALL
SELECT f.video_rank, f.video_id, f.title, f.country_id FROM "FR_Videos" f
WHERE (f.video_id LIKE 'xTlNMmZKwpA' OR f.video_id LIKE 'aJOTlE1K90k')
UNION ALL
SELECT g.video_rank, g.video_id, g.title, g.country_id FROM "GB_Videos" g
WHERE (g.video_id LIKE 'xTlNMmZKwpA' OR  g.video_id LIKE 'aJOTlE1K90k');

SELECT c.video_rank, c.video_id, c.title, c.country_id FROM "CA_Videos" c
WHERE (c.video_rank BETWEEN 1 AND 5)
UNION ALL
SELECT u.video_rank, u.video_id, u.title, u.country_id FROM "US_Videos" u
WHERE (u.video_rank BETWEEN 1 AND 5)
UNION ALL
SELECT m.video_rank, m.video_id, m.title, m.country_id FROM "MX_Videos" m
WHERE (m.video_rank BETWEEN 1 AND 5)
UNION ALL
SELECT f.video_rank, f.video_id, f.title, f.country_id FROM "FR_Videos" f
WHERE (f.video_rank BETWEEN 1 AND 5)
UNION ALL
SELECT g.video_rank, g.video_id, g.title, g.country_id FROM "GB_Videos" g
WHERE (g.video_rank BETWEEN 1 AND 5);