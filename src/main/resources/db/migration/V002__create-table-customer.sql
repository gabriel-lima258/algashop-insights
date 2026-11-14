-- Sem dados pessoais (nome, documento, e-mail, telefone e endereco completo): so o que o relatorio usa.
create table customer (
    id uuid not null,
    birth_date date,
    registered_at timestamp with time zone,
    loyalty_points integer,
    promotion_notifications_allowed boolean,
    address_city varchar(255),
    address_state varchar(255),
    archived boolean,
    archived_at timestamp with time zone,
    constraint pk_customer primary key (id)
);