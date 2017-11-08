--2017.09.01
CREATE TABLE naverNews(
title VARCHAR2(4000) CONSTRAINT news_title_nn NOT NULL,
link VARCHAR2(2000) CONSTRAINT news_link_nn NOT NULL,
description CLOB CONSTRAINT news_desc_nn NOT NULL
);