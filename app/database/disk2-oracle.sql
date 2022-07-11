CREATE TABLE caixa( 
      id number(10)    NOT NULL , 
      data_lancamento date    NOT NULL , 
      valor binary_double  (10,2)    NOT NULL , 
      historico varchar  (50)    NOT NULL , 
      banco varchar  (20)    NOT NULL , 
      status varchar  (20)    NOT NULL , 
      unidade varchar  (20)    NOT NULL , 
      created_at timestamp(0)   , 
      updated_at timestamp(0)   , 
      deleted_at timestamp(0)   , 
 PRIMARY KEY (id)) ; 

CREATE TABLE categoria( 
      id number(10)    NOT NULL , 
      categoria varchar  (50)   , 
 PRIMARY KEY (id)) ; 

 
  CREATE SEQUENCE caixa_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER caixa_id_seq_tr 

BEFORE INSERT ON caixa FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT caixa_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
CREATE SEQUENCE categoria_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER categoria_id_seq_tr 

BEFORE INSERT ON categoria FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT categoria_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
 
  
