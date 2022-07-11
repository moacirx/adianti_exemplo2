CREATE TABLE caixa( 
      id  INT IDENTITY    NOT NULL  , 
      data_lancamento date   NOT NULL  , 
      valor float  (10,2)   NOT NULL  , 
      historico varchar  (50)   NOT NULL  , 
      banco varchar  (20)   NOT NULL  , 
      status varchar  (20)   NOT NULL  , 
      unidade varchar  (20)   NOT NULL  , 
      created_at datetime2   , 
      updated_at datetime2   , 
      deleted_at datetime2   , 
 PRIMARY KEY (id)) ; 

CREATE TABLE categoria( 
      id  INT IDENTITY    NOT NULL  , 
      categoria varchar  (50)   , 
 PRIMARY KEY (id)) ; 

 
 
  
