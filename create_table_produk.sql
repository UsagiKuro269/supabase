create table produk (
    id serial primary key,
    nama varchar(50) NOT NULL,
    harga int check (harga > 0),
    stok int default 0 check (stok >= 0),
    kategori_id int,
    constraint fk_kategori foreign key (kategori_id) references kategori(id) on delete set null
);
