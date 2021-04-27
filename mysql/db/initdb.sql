USE full_cycle;

CREATE TABLE modulo (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
)

INSERT INTO modulo (name) VALUES ('Docker');
INSERT INTO modulo (name) VALUES ('Fundamentos de Arquitetura');
INSERT INTO modulo (name) VALUES ('Comunicação');
INSERT INTO modulo (name) VALUES ('RabbitMQ');
INSERT INTO modulo (name) VALUES ('Autenticação e Keycloak');
INSERT INTO modulo (name) VALUES ('Apache Kafka');
INSERT INTO modulo (name) VALUES ('Integração Contínua');
INSERT INTO modulo (name) VALUES ('Kubernetes');
INSERT INTO modulo (name) VALUES ('Observabilidade');