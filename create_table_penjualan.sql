create table penjualan ( 
  id serial primary key,
  produk_id int not null,
  kelas varchar(5),
  jumlah int check (jumlah > 0),
  tanggal date unique not null,
  constraint fk_penjualan foreign key (produk_id) references produk(id) 
);
