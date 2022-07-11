<?php

class Caixa extends TRecord
{
    const TABLENAME  = 'caixa';
    const PRIMARYKEY = 'id';
    const IDPOLICY   =  'serial'; // {max, serial}

    const DELETEDAT  = 'deleted_at';
    const CREATEDAT  = 'created_at';
    const UPDATEDAT  = 'updated_at';

    

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('data_lancamento');
        parent::addAttribute('valor');
        parent::addAttribute('historico');
        parent::addAttribute('banco');
        parent::addAttribute('status');
        parent::addAttribute('unidade');
        parent::addAttribute('created_at');
        parent::addAttribute('updated_at');
        parent::addAttribute('deleted_at');
            
    }

    
}

