SELECT 'CREATE DATABASE hospital_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'hospital_db')\gexec

SELECT 'CREATE DATABASE hospital_patient_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'hospital_patient_db')\gexec

SELECT 'CREATE DATABASE keycloak_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'keycloak_db')\gexec
