<?php

/**
 * BuilderPermissionUpdate
 *
 * @version    1.0
 * @package    control
 * @subpackage admin
 * @author     Pablo Dall'Oglio
 * @copyright  Copyright (c) 2006 Adianti Solutions Ltd. (http://www.adianti.com.br)
 * @license    http://www.adianti.com.br/framework-license
 */
class BuilderPermissionUpdate extends TPage
{
    /**
     * Constructor method
     */
    public function __construct()
    {
        parent::__construct();
        
        BuilderPermissionService::checkPermission();
    }
    
    /**
     * Ask for Update menu
     */
    public function onAskUpdate()
    {
        try
        {
            BuilderPermissionService::checkPermission();
            
            if (!file_exists('menu-dist.xml'))
            {
                throw new Exception(_bt('File not found') . ':<br> menu-dist.xml');
            }
            
            $action = new TAction(array($this, 'onUpdatePermissions'));
            new TQuestion(_bt('Update permissions?'), $action);
        }
        catch (Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
    }
    
    /**
     * Update menu
     */
    public static function onUpdatePermissions($param)
    {
        try
        {
            BuilderPermissionService::checkPermission();
            
            $permissions = BuilderPageService::getPermissions();
            
            if ($permissions)
            {
                TTransaction::open('permission');
                
                foreach ($permissions as $group => $programs)
                {
                    $system_group = SystemGroup::where('name','=',$group)->first();
                    
                    if (empty($system_group))
                    {
                        $system_group = new SystemGroup;
                        $system_group->name = $group;
                        $system_group->store();
                    }
                    
                    if ($programs)
                    {
                        foreach ($programs as $controller => $name)
                        {
                            $system_program = SystemProgram::findByController($controller);
                            
                            if (empty($system_program))
                            {
                                $system_program = new SystemProgram;
                                $system_program->name = $name;
                                $system_program->controller = $controller;
                                $system_program->store();
                            }
                            
                            $system_group->addSystemProgram($system_program);
                        }
                    }
                }
                TTransaction::close();
            }
            LoginForm::reloadPermissions();
        }
        catch (Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
    }
}
