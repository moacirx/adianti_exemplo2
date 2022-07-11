INSERT INTO system_group (id, name) VALUES( (SELECT max(g.id) + 1 FROM system_group g) , 'Básico');
INSERT INTO system_user_group (id, system_group_id, system_user_id) VALUES((SELECT max(ug.id) + 1 FROM system_user_group ug), 3, 1);
INSERT INTO system_program (id,name,controller) VALUES( (SELECT max(p.id) + 1 FROM system_program p) , 'Categoria', 'CategoriaFormList');
INSERT INTO system_group_program (id, system_group_id, system_program_id) VALUES( (SELECT max(gp.id) + 1 FROM system_group_program gp), (SELECT max(g.id) FROM system_group g) , (SELECT max(p.id) FROM system_program p));
INSERT INTO system_unit (id,name,connection_name) VALUES ((SELECT coalesce(max(u.id) + 1,0) + 1 FROM system_unit u), 'Matriz', 'matriz');
INSERT INTO system_user_unit (id, system_user_id, system_unit_id) VALUES (1,1,1);