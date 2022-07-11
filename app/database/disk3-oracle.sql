CREATE TABLE categoria( 
      id number(10)    NOT NULL , 
      categoria varchar  (50)   , 
 PRIMARY KEY (id)) ; 

 
  CREATE SEQUENCE categoria_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER categoria_id_seq_tr 

BEFORE INSERT ON categoria FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT categoria_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
 
  
