CREATE TABLE STG_DIM_VISITEUR (
IDVISITEUR int primary key,
NOM varchar(25) NOT NULL,
PRENOM varchar(25) NOT NULL,
MAIL varchar(100) NOT NULL,
TELEPHONE varchar(20)
);


CREATE TABLE STG_DIM_CANALDISTRIBUTION(
IDCANAL int primary key, 
NOMCANAL varchar(50) not null,
TYPECANAL varchar(20) not null
);


CREATE TABLE STG_DIM_CLASSE(
IDCLASSE int primary key,
NOMCLASSE varchar(20) not null,
AVANTAGES varchar(100) not null
);


CREATE TABLE STG_DIM_PROMOTION(
IDPROMOTION int primary key,
NOMPROMOTION varchar(30) not null,
DESCRIPTION varchar(30) not null 
);


CREATE TABLE STG_DIM_BILLET(
IDBILLET int primary key,
SK_CANAL_ID int not null, 
SK_VOL_ID int not null, 
TARIFBASE NUMBER(4,2) not null,
SURCLASSEMENT varchar(10) check (SURCLASSEMENT in ('True', 'False')),
PRIXACHAT NUMBER(4,2) not null,
DATEACHAT date not null,
CLASSE varchar(20) not null,
STATUS varchar(10) not null,
PROMOTIONAPPLIQUEE varchar(10) check (PROMOTIONAPPLIQUEE in ('True', 'False')),
TARIFSUPPLEMENTAIRE number(4,2),
TAUXPROMOTION number(3,2)
);


CREATE TABLE STG_FAIT_PROMOTION(
IDPROMO int primary key,
SK_BILLET_ID int not null,
SK_PROMOTION_ID int not null,
TAUXPROMOTION number(3,2) not null,
DATEDEBUT date not null,
DATEFIN date not null
);


CREATE TABLE STG_FAIT_SURCLASSEMENT(
IDSURCLASSEMENT int primary key,
SK_BILLET_ID int not null,
SK_CLASSE_ID int not null,
SURCLASSEMENT varchar(10) check (SURCLASSEMENT in ('True', 'False')), 
TARIFSUPPLEMENTAIRE number(3)
);

CREATE TABLE STG_FAIT_CANALVISI(
ID int primary key,
SK_CANAL_ID int not null,
SK_VISITEUR_ID int not null
);


CREATE TABLE STG_FAIT_MILES(
IDMILES int primary key,
SK_PARTICIPANT_ID int not null,
SK_VOL_ID varchar(20) not null,
MILESCALCULES number(3) not null
);