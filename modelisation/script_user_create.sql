CREATE USER C##TECH_USER IDENTIFIED BY Hello1;
GRANT ALL PRIVILEGES TO C##TECH_USER;

DROP TABLE STG_DIM_APPAREILS;
DROP TABLE STG_DIM_VOLS;
DROP TABLE STG_DIM_PARTICIPANTS;
DROP TABLE STG_DIM_VISITEUR;
DROP TABLE STG_DIM_CANALDISTRIBUTION;
DROP TABLE STG_DIM_CLASSE;
DROP TABLE STG_DIM_PROMOTION;
DROP TABLE STG_DIM_BILLET;
DROP TABLE STG_FAIT_PROMOTION;
DROP TABLE STG_FAIT_SURCLASSEMENT;
DROP TABLE STG_FAIT_CANALVISI;
DROP TABLE STG_FAIT_MILES;

-- Drop table DWH
DROP TABLE DWH_FAIT_MILES;
DROP TABLE DWH_FAIT_CANALVISI;
DROP TABLE DWH_FAIT_SURCLASSEMENT;
DROP TABLE DWH_FAIT_PROMOTION;
DROP TABLE DWH_DIM_BILLET;
DROP TABLE DWH_DIM_PROMOTION;
DROP TABLE DWH_DIM_CLASSE;
DROP TABLE DWH_DIM_CANALDISTRIBUTION;
DROP TABLE DWH_DIM_VISITEURS;
DROP TABLE DWH_DIM_PARTICIPANTS;
DROP TABLE DWH_DIM_VOLS;
DROP TABLE DWH_DIM_APPAREILS;
