CREATE TABLE "US_Videos" (
    "video_rank" int   NOT NULL,
    "video_id" varchar   NOT NULL,
    "country_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "channel_title" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "publish_time" date   NOT NULL,
    "views" int   NOT NULL,
    CONSTRAINT "pk_US_Videos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "GB_Videos" (
    "video_rank" int   NOT NULL,
    "video_id" varchar   NOT NULL,
    "country_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "channel_title" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "publish_time" date   NOT NULL,
    "views" int   NOT NULL,
    CONSTRAINT "pk_GB_Videos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "FR_Videos" (
    "video_rank" int   NOT NULL,
    "video_id" varchar   NOT NULL,
    "country_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "channel_title" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "publish_time" date   NOT NULL,
    "views" int   NOT NULL,
    CONSTRAINT "pk_FR_Videos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "CA_Videos" (
    "video_rank" int   NOT NULL,
    "video_id" varchar   NOT NULL,
    "country_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "channel_title" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "publish_time" date   NOT NULL,
    "views" int   NOT NULL,
    CONSTRAINT "pk_CA_Videos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "MX_Videos" (
    "video_rank" int   NOT NULL,
    "video_id" varchar   NOT NULL,
    "country_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "channel_title" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "publish_time" date   NOT NULL,
    "views" int   NOT NULL,
    CONSTRAINT "pk_MX_Videos" PRIMARY KEY (
        "video_id"
     )
);

--Pokemon & Maroon 5 Video
SELECT c.video_rank, c.country_id, 
m.video_rank, m.country_id,
f.video_rank, f.country_id,
u.video_rank, u.country_id,
c.video_id, c.title, c.channel_title, c.category_id, c.publish_time, c.views 
FROM "CA_Videos" c
INNER JOIN "MX_Videos" m
ON c.video_id = m.video_id
INNER JOIN "FR_Videos" f
ON c.video_id = f.video_id
INNER JOIN "US_Videos" u
ON c.video_id = u.video_id;

--Cardi B 
SELECT c.video_rank, c.country_id, c.video_id, c.title,
g.video_rank, g.country_id, g.video_id, g.title,
f.video_rank, f.country_id, f.video_id, f.title,
u.video_rank, u.country_id, u.video_id, u.title
FROM "CA_Videos" AS c, "GB_Videos" AS g, "FR_Videos" AS f, "US_Videos" AS u

WHERE (c.video_id LIKE 'xTlNMmZKwpA' AND
	   g.video_id LIKE 'xTlNMmZKwpA' AND
	   f.video_id LIKE 'xTlNMmZKwpA' AND
	   u.video_id LIKE 'xTlNMmZKwpA');

--Similarities between English speaking countries
SELECT c.video_rank, c.country_id, 
u.video_rank, u.country_id,
g.video_rank, g.country_id,
c.video_id, c.title, c.category_id
FROM "CA_Videos" c
JOIN "GB_Videos" g
ON c.video_id = g.video_id
JOIN "US_Videos" u
ON c.video_id = u.video_id;

--Similarities between France and Canada
SELECT c.video_rank, c.country_id, 
f.video_rank, f.country_id,
c.video_id, c.title, c.category_id
FROM "CA_Videos" c
JOIN "FR_Videos" f
ON c.video_id = f.video_id;

--Similarities between Canada and United States
SELECT u.video_rank, u.country_id, 
c.video_rank, c.country_id,
u.video_id, u.title, u.category_id
FROM "US_Videos" u
JOIN "CA_Videos" c
ON u.video_id = c.video_id;





