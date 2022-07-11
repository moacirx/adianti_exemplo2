CREATE TABLE caixa( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `data_lancamento` date   NOT NULL  , 
      `valor` double   NOT NULL  , 
      `historico` varchar  (50)   NOT NULL  , 
      `banco` varchar  (20)   NOT NULL  , 
      `status` varchar  (20)   NOT NULL  , 
      `unidade` varchar  (20)   NOT NULL  , 
      `created_at` datetime   , 
      `updated_at` datetime   , 
      `deleted_at` datetime   , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

CREATE TABLE categoria( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `categoria` varchar  (50)   , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

 
 
  
