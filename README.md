# hospital-infrastructure

Vai centralizar o Docker Compose com Consul, Keycloak, Postgres, RabbitMQ e Grafa com loki



\# Tech Challenge - Fase 3: Sistema Hospitalar Modular



Sistema backend modular e seguro para ambiente hospitalar, desenvolvido como parte do Tech Challenge da Pós-Tech de Arquitetura e Desenvolvimento Java.



\## 🏛️ Arquitetura da Solução



O projeto adota uma arquitetura distribuída baseada em \*\*Microsserviços\*\*, aplicando rigorosamente os princípios de \*\*Clean Code\*\*, \*\*SOLID\*\*, e padrões modernos de desenvolvimento corporativo.



\### 🛠️ Stack Tecnológica

\* \*\*Java 25\*\* \& \*\*Spring Boot\*\*

\* \*\*HashiCorp Consul\*\* (Service Discovery)

\* \*\*Keycloak\*\* (Autenticação e Autorização OAuth2 / JWT)

\* \*\*PostgreSQL\*\* com \*\*Flyway\*\* (Persistência e Migrações)

\* \*\*RabbitMQ\*\* (Comunicação Assíncrona)

\* \*\*GraphQL\*\* (Consultas flexíveis para histórico de pacientes)

\* \*\*Grafana + Loki\*\* (Visualização e centralização de logs)

\* \*\*Docker \& Docker Compose\*\* (Containerização total do ambiente)



\---



\## 📈 Histórico de Evolução e Passos Realizados



\* \*\*Passo 1:\*\* Configuração da infraestrutura base via Docker Compose (`hospital-infrastructure`) contendo Consul, PostgreSQL, Keycloak, RabbitMQ, Grafana e Loki.

