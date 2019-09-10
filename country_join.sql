SELECT c.video_rank, c.country_id, 
m.video_rank, m.country_id,
f.video_rank, f.country_id,
u.video_rank, u.country_id,
g.video_rank, g.country_id,
c.video_id, c.title, c.channel_title, c.category_id, c.publish_time, c.views 
FROM "CA_Videos" c
INNER JOIN "MX_Videos" m
ON c.video_id = m.video_id
--INNER JOIN "FR_Videos" f
--ON c.video_id = f.video_id
INNER JOIN "US_Videos" u
ON c.video_id = u.video_id
INNER JOIN "GB_Videos" g
ON c.video_id = g.video_id;
