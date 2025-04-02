SELECT 'CREATE DATABASE machine_task_jk'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'machine_task_jk')\gexec

SELECT 'CREATE DATABASE machine_task_assets_jk'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'machine_task_assets_jk')\gexec
