-- 1
CREATE TABLE IF NOT EXISTS foydalanuvchilar (
  user_id SERIAL PRIMARY KEY,
  ism TEXT NOT NULL,
  yosh INTEGER,
  manzil TEXT
);

INSERT INTO foydalanuvchilar (ism, yosh, manzil) VALUES
('Ali', 25, 'Toshkent'),
('Xurshid', 30, 'Samarqand'),
('Nodira', 22, 'Buxoro');

SELECT * FROM foydalanuvchilar;

-- 2
CREATE TABLE IF NOT EXISTS mahsulotlar (
  mah_id SERIAL PRIMARY KEY,
  nom TEXT NOT NULL,
  narxi INTEGER,
  tavsif TEXT
);

INSERT INTO mahsulotlar (nom, narxi, tavsif) VALUES
('Laptop', 8000000, 'Dell Inspiron 15'),
('Telefon', 3000000, 'Samsung Galaxy A51'),
('Televizor', 2500000, 'LG Smart TV');

SELECT * FROM mahsulotlar;

-- 3
CREATE TABLE IF NOT EXISTS buyurtmalar (
  buy_id SERIAL PRIMARY KEY,
  foydalanuvchi TEXT,
  mahsulot TEXT,
  miqdor INTEGER
);

INSERT INTO buyurtmalar (foydalanuvchi, mahsulot, miqdor) VALUES
('Ali', 'Laptop', 1),
('Xurshid', 'Telefon', 2),
('Nodira', 'Televizor', 1);

SELECT * FROM buyurtmalar;

-- 4
CREATE TABLE IF NOT EXISTS xodimlar (
  xod_id SERIAL PRIMARY KEY,
  ism TEXT NOT NULL,
  lavozim TEXT,
  yillik_ish_haqi INTEGER
);

INSERT INTO xodimlar (ism, lavozim, yillik_ish_haqi) VALUES
('Dilshod', 'Menejer', 12000000),
('Umida', 'Dasturchi', 15000000),
('Jamshid', 'Hisobchi', 10000000);

SELECT * FROM xodimlar;

-- 5
CREATE TABLE IF NOT EXISTS yetkazib_berish (
  yet_id SERIAL PRIMARY KEY,
  kompaniya_nomi TEXT NOT NULL,
  telefon_raqam TEXT,
  manzil TEXT
);

INSERT INTO yetkazib_berish (kompaniya_nomi, telefon_raqam, manzil) VALUES
('Express Delivery', '+998901234567', 'Toshkent'),
('FastCargo', '+998909876543', 'Samarqand'),
('QuickShip', '+998907654321', 'Buxoro');

SELECT * FROM yetkazib_berish;
