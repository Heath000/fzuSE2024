-- +migrate Up

INSERT INTO provinces (province_id, province_name)
VALUES ('1', '福建');

INSERT INTO regions (region_id, region_name, province_id)
VALUES ('1', '福州', '1');

INSERT INTO categories (category_id, parent_id, category_name, level, region_id)
VALUES 
    ('1', NULL, '财政金融', 1, '1'),
    ('2', NULL, '对外经济', 1, '1'),
    ('3', NULL, '国民经济核算', 1, '1'),
    ('4', NULL, '价格指数', 1, '1'),
    ('5', NULL, '就业与职工工资', 1, '1'),
    ('6', NULL, '批发零售.住宿餐饮与旅游', 1, '1');

INSERT INTO categories (category_id, parent_id, category_name, level, region_id)
VALUES 
    ('7', '4', '城市居民消费价格指数', 2, '1'),
    ('8', '4', '商品零售价格指数', 2, '1');

INSERT INTO basic_data (region_id, category_id, data_name, data, year)
VALUES
    ('1', '7', '城市居民消费价格指数', 102.4, '1990'),
    ('1', '7', '城市居民消费价格指数', 110.3, '1991'),
    ('1', '7', '城市居民消费价格指数', 120.2, '1992'),
    ('1', '7', '城市居民消费价格指数', 143.9, '1993'),
    ('1', '7', '城市居民消费价格指数', 181.7, '1994'),
    ('1', '7', '城市居民消费价格指数', 214.8, '1995'),
    ('1', '7', '城市居民消费价格指数', 233.3, '1996'),
    ('1', '7', '城市居民消费价格指数', 241.9, '1997'),
    ('1', '7', '城市居民消费价格指数', 242.6, '1998'),
    ('1', '7', '城市居民消费价格指数', 240.9, '1999'),
    ('1', '7', '城市居民消费价格指数', 247.9, '2000'),
    ('1', '7', '城市居民消费价格指数', 245.2, '2001'),
    ('1', '7', '城市居民消费价格指数', 245.0, '2002'),
    ('1', '7', '城市居民消费价格指数', 246.0, '2003'),
    ('1', '7', '城市居民消费价格指数', 257.2, '2004'),
    ('1', '7', '城市居民消费价格指数', 265.4, '2005'),
    ('1', '7', '城市居民消费价格指数', 267.5, '2006'),
    ('1', '7', '城市居民消费价格指数', 278.7, '2007'),
    ('1', '7', '城市居民消费价格指数', 290.7, '2008'),
    ('1', '7', '城市居民消费价格指数', 288.1, '2009'),
    ('1', '7', '城市居民消费价格指数', 297.3, '2010'),
    ('1', '7', '城市居民消费价格指数', 311.6, '2011'),
    ('1', '7', '城市居民消费价格指数', 318.5, '2012'),
    ('1', '7', '城市居民消费价格指数', 327.1, '2013'),
    ('1', '7', '城市居民消费价格指数', 333.0, '2014'),
    ('1', '7', '城市居民消费价格指数', 338.3, '2015'),
    ('1', '7', '城市居民消费价格指数', 346.8, '2016'),
    ('1', '7', '城市居民消费价格指数', 351.7, '2017'),
    ('1', '7', '城市居民消费价格指数', 357.0, '2018'),
    ('1', '7', '城市居民消费价格指数', 365.9, '2019'),
    ('1', '7', '城市居民消费价格指数', 374.7, '2020'),
    ('1', '7', '城市居民消费价格指数', 376.9, '2021'),
    ('1', '7', '城市居民消费价格指数', 385.9, '2022');

INSERT INTO basic_data (region_id, category_id, data_name, data, year)
VALUES
    ('1', '8', '商品零售价格指数', 262.2, '1990'),
    ('1', '8', '商品零售价格指数', 276.1, '1991'),
    ('1', '8', '商品零售价格指数', 296.3, '1992'),
    ('1', '8', '商品零售价格指数', 350.2, '1993'),
    ('1', '8', '商品零售价格指数', 435.3, '1994'),
    ('1', '8', '商品零售价格指数', 500.6, '1995'),
    ('1', '8', '商品零售价格指数', 524.1, '1996'),
    ('1', '8', '商品零售价格指数', 528.3, '1997'),
    ('1', '8', '商品零售价格指数', 521.4, '1998'),
    ('1', '8', '商品零售价格指数', 505.8, '1999'),
    ('1', '8', '商品零售价格指数', 498.7, '2000'),
    ('1', '8', '商品零售价格指数', 486.2, '2001'),
    ('1', '8', '商品零售价格指数', 475.5, '2002'),
    ('1', '8', '商品零售价格指数', 464.1, '2003'),
    ('1', '8', '商品零售价格指数', 475.2, '2004'),
    ('1', '8', '商品零售价格指数', 480.4, '2005'),
    ('1', '8', '商品零售价格指数', 479.9, '2006'),
    ('1', '8', '商品零售价格指数', 494.8, '2007'),
    ('1', '8', '商品零售价格指数', 516.6, '2008'),
    ('1', '8', '商品零售价格指数', 508.9, '2009'),
    ('1', '8', '商品零售价格指数', 523.7, '2010'),
    ('1', '8', '商品零售价格指数', 544.6, '2011'),
    ('1', '8', '商品零售价格指数', 550.6, '2012'),
    ('1', '8', '商品零售价格指数', 556.1, '2013'),
    ('1', '8', '商品零售价格指数', 559.4, '2014'),
    ('1', '8', '商品零售价格指数', 556.0, '2015'),
    ('1', '8', '商品零售价格指数', 559.9, '2016'),
    ('1', '8', '商品零售价格指数', 561.6, '2017'),
    ('1', '8', '商品零售价格指数', 570.1, '2018'),
    ('1', '8', '商品零售价格指数', 580.4, '2019'),
    ('1', '8', '商品零售价格指数', 585.0, '2020'),
    ('1', '8', '商品零售价格指数', 590.3, '2021'),
    ('1', '8', '商品零售价格指数', 608.6, '2022');

-- +migrate Down

-- 删除数据行
DELETE FROM basic_data WHERE category_id = '7' OR category_id = '8';
DELETE FROM categories WHERE category_id IN ('7', '8');
DELETE FROM categories WHERE category_id IN ('1', '2', '3', '4', '5', '6');
DELETE FROM regions WHERE region_id = '1';
DELETE FROM provinces WHERE province_id = '1';
