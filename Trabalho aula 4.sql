create database trabalho1; 
use trabalho1;
drop database trabalho1; 

create table Produtora(
id int (12),
cnpj bigint(15) default '252525555555555',
nome_fantasia varchar(200)default 'não tao bom demais',
nome varchar(200) default 'Associação Chatuba ltda',
funcionarios int ,
catalogo varchar(170),
modelos_de_maquinas varchar(80) default "ltf50",
cep varchar(8) default "26587700",
endereço varchar(200) default "Travessa Particular",
Complemnto varchar(100) default "lote 12"
);
drop table Produtora;

alter table Produtora
	drop primary key;
alter table Produtora     
	add constraint PK_Produtora primary key (cnpj),
	modify id int(15) not null,
    modify cnpj bigint(15) not null,
    modify nome_fantasia varchar(200) not null,
    modify nome varchar(200) not null,
    modify funcionarios int not null,
    modify catalogo varchar(170) ,
	modify modelos_de_maquinas varchar(80),
	modify cep varchar(8) not null,
    modify endereço varchar(200) not null;
    
create table Fornecedor(
id int(12),
cnpj bigint(15),
nome_fantasia varchar(200),
nome varchar(200),
fabrica varchar(50) not null,
funcionarios int ,
produtos varchar(200),
data_validade date,
cep int(8) not null,
endereço varchar(200) not null,
produtora_cnpj bigint
);    

alter table Produtora
	drop primary key;
alter table Produtora     
	add constraint PK_ primary key (cnpj),
	modify id int(15) not null,
    modify cnpj bigint(15) not null,
    modify nome_fantasia varchar(200) not null,
    modify nome varchar(200) not null,
    modify fabrica varchar(50) not null,
    modify funcionarios int not null,
    modify produtos varchar(200),
	modify data_validade date not null, 
	modify cep varchar(8) not null,
    modify endereço varchar(200) not null,
	add foreign key (produtora_cnpj) references Produtora(cnpj);
    
show columns from ;  
select * from ;



