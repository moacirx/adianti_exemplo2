CREATE TABLE caixa( 
      id  SERIAL    NOT NULL  , 
      data_lancamento date   NOT NULL  , 
      valor float   NOT NULL  , 
      historico varchar  (50)   NOT NULL  , 
      banco varchar  (20)   NOT NULL  , 
      status varchar  (20)   NOT NULL  , 
      unidade varchar  (20)   NOT NULL  , 
      created_at timestamp   , 
      updated_at timestamp   , 
      deleted_at timestamp   , 
 PRIMARY KEY (id)) ; 

CREATE TABLE categoria( 
      id  SERIAL    NOT NULL  , 
      categoria varchar  (50)   , 
 PRIMARY KEY (id)) ; 

 
 
  
