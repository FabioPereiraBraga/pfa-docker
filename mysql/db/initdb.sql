CREATE DATABASE IF NOT EXISTS  pfa_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE pfa_db;


CREATE TABLE IF NOT EXISTS modules (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO modules (name) VALUES ('Docker');
INSERT INTO modules (name) VALUES ('Kubernetes');
INSERT INTO modules (name) VALUES ('Comnicação');
INSERT INTO modules (name) VALUES ('Observabilidade');
INSERT INTO modules (name) VALUES ('Autenticação e Keycloak');
INSERT INTO modules (name) VALUES ('Integração Contínua');
INSERT INTO modules (name) VALUES ('Apache Kafka');