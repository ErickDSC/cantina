create table Funcionario (
    codigo int(4) primary key,
    nome char(50),
    senha char(12)
);
create table Produto (
    codigo int(5) primary key,
    descricao char(30),
    preco_compra numeric(4, 2),
    preco_venda numeric(4, 2),
    quantidade_comprada int(5),
    estoque_minimo int(4)
);
create table Venda (
    cod_venda integer(4) primary key,
    data_venda date,
    desconto int(3),
    total_venda numeric(4, 2),
    forma_pagamento char(30)
);
create table Item (
    id_item_venda char(10) primary key,
    cod_prod int(5),
    cod_venda int(4),
    quantidade int(5),
    preco numeric(4, 2)
);
alter table Item
add foreign key (cod_prod) references Produto(codigo);

alter table Item
add foreign key (cod_venda) references Venda(cod_venda);
