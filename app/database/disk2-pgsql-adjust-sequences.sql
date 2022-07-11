SELECT setval('caixa_id_seq', coalesce(max(id),0) + 1, false) FROM caixa;
SELECT setval('categoria_id_seq', coalesce(max(id),0) + 1, false) FROM categoria;