create database applicacao;
drop database applicacao;

select * from application.usuarios;

use applicacao;
    create table colaboradores (
        codigo bigint not null auto_increment,
        nomecompleto varchar(255) not null,
        cargo varchar(255),
        matricula varchar(255) not null,
        departamento_codigo bigint,
        primary key (codigo)
    );
    
    create table departamentos (
       codigo bigint not null auto_increment,
        cidade varchar(255),
        departamento varchar(255),
        hierarquia varchar(255),
        sigla varchar(255),
        primary key (codigo)
    );

    
    create table itens (
        codigo bigint not null auto_increment,
        codigoBarras varchar(255),
        descricao varchar(255),
        fornecedor varchar(255),
        produto varchar(255),
        disponiveis bigint,
        primary key (codigo)
    );

    
    create table mercadorias (
       codigo bigint not null auto_increment,
        descricao varchar(255),
        estoque varchar(255),
        patrimonio varchar(255),
        produto varchar(255),
        serialnumber varchar(255) not null,
        sucateado bit not null,
        valor double precision not null,
        modelo_id bigint,
        primary key (codigo)
    );

    
    create table modelos (
       codigo bigint not null auto_increment,
        classe varchar(255),
        descricao varchar(255),
        fornecedor varchar(255),
        modelo varchar(255),
        primary key (codigo)
    );

    
    create table movimentacao (
       codigo bigint not null auto_increment,
        dataMovimentacao date,
        trafego varchar(255),
        colaborador_id bigint,
        departamento_id bigint,
        mercadoria_id bigint,
        primary key (codigo)
    );

    
    create table usuarios (
       codigo bigint not null auto_increment,
        ativado bit,
        logon varchar(30) not null,
        password varchar(255) not null,
        username varchar(255),
        colaborador_codigo bigint,
        primary key (codigo)
    ); 

    alter table colaboradores drop index unique_matricula;
    alter table colaboradores add constraint unique_matricula unique (matricula);
    alter table departamentos drop index unique_sigla;
    alter table departamentos add constraint unique_sigla unique (sigla);
    alter table itens drop index unique_cod_barras;
    alter table itens add constraint unique_cod_barras unique (codigoBarras);
    alter table mercadorias drop index mercadoria_patrimonio;
    alter table mercadorias add constraint mercadoria_patrimonio unique (patrimonio);
    alter table mercadorias drop index mercadoria_serialnumber;
    alter table mercadorias add constraint mercadoria_serialnumber unique (serialnumber);
    alter table modelos drop index modelos_modelo;
    alter table modelos add constraint modelos_modelo unique (modelo);
    alter table usuarios drop index usuario_logon;
    alter table usuarios add constraint usuario_logon unique (logon);
    alter table usuarios drop index usuario_colaborador;
    alter table usuarios add constraint usuario_colaborador unique (colaborador_codigo);
    
    alter table colaboradores 
       add constraint dep_colaboradores 
       foreign key (departamento_codigo) 
       references departamentos (codigo);

    
    alter table mercadorias 
       add constraint modelo_mercadorias 
       foreign key (modelo_id) 
       references modelos (codigo);

    
    alter table movimentacao 
       add constraint col_movimentacao 
       foreign key (colaborador_id) 
       references colaboradores (codigo);

    alter table movimentacao 
       add constraint dep_movimentacao 
       foreign key (departamento_id) 
       references departamentos (codigo);

    alter table movimentacao 
       add constraint merc_movimentacao 
       foreign key (mercadoria_id) 
       references mercadorias (codigo);

    alter table usuarios 
       add constraint col_usuarios 
       foreign key (colaborador_codigo) 
       references colaboradores (codigo);