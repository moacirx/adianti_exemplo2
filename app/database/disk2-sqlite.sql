PRAGMA foreign_keys=OFF; 

CREATE TABLE caixa( 
      id  INTEGER    NOT NULL  , 
      data_lancamento date   NOT NULL  , 
      valor double  (10,2)   NOT NULL  , 
      historico varchar  (50)   NOT NULL  , 
      banco varchar  (20)   NOT NULL  , 
      status varchar  (20)   NOT NULL  , 
      unidade varchar  (20)   NOT NULL  , 
      created_at datetime   , 
      updated_at datetime   , 
      deleted_at datetime   , 
 PRIMARY KEY (id)) ; 

CREATE TABLE categoria( 
      id  INTEGER    NOT NULL  , 
      categoria varchar  (50)   , 
 PRIMARY KEY (id)) ; 

 
 
  
