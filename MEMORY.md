# 🏥 Hospital Microservices Ecosystem - Architecture Memory

Documento de referência e memória arquitetural do ecossistema de microsserviços hospitalares.

---

## 1. Visão Geral e Objetivos
* **Propósito:** Estabelecer um ecossistema de microsserviços hospitalares escalável, modular, seguro e alinhado aos padrões de mercado.
* **Princípios Arquiteturais:** Clean Architecture, SOLID, DRY (Don't Repeat Yourself) e governança centralizada de dependências.

---

## 2. Stack Tecnológica Oficial
* **Linguagem:** Java 25
* **Framework Principal:** Spring Boot 4.1.1
* **Cloud & Service Discovery:** Spring Cloud (Consul)
* **Persistência & Migrações:** PostgreSQL, Spring Data JPA, Flyway
* **Mensageria:** RabbitMQ (Spring AMQP)
* **Documentação de API:** SpringDoc OpenAPI (Swagger)
* **Gerenciamento de Build:** Maven (com projeto BOM/Parent centralizado)

---

## 3. Governança e Estrutura de Projetos

### 📦 `hospital-parent` (BOM & Parent POM)
* **Localização:** Raiz do ecossistema (`/hospital-parent`)
* **Função:** Centralizar o versionamento de toda a stack tecnológica (`spring-boot-dependencies`, `spring-cloud-dependencies`, Flyway, SpringDoc) utilizando `<packaging>pom</packaging>`.
* **Vantagem:** Evita *dependency drift* entre os microsserviços e elimina duplicação de versões nos arquivos `pom.xml`.

### 🗓️ `hospital-scheduling-service` (Microsserviço de Agendamento)
* **Função:** Gerenciamento de consultas e agendamentos hospitalares.
* **Integração:** Herda diretamente do `hospital-parent` utilizando `<relativePath>../hospital-parent/pom.xml</relativePath>` para desenvolvimento local na IDE.
* **Status:** Totalmente integrado, compilado com sucesso (`BUILD SUCCESS`) e limpo de versões redundantes (aderindo ao Clean Code e DRY).

---

## 4. Infraestrutura Local (Docker Compose)
* **Serviços Ativos:** 
  * PostgreSQL (Banco de dados relacional)
  * Consul (Service Discovery e Config Server)
  * RabbitMQ (Mensageria assíncrona)
* **Status:** Operacional e pronto para integração com os microsserviços.

---

## 5. Próximos Passos do Roadmap
1. **Validação de Infraestrutura:** Integrar o `hospital-scheduling-service` com o PostgreSQL local e aplicar as migrações via Flyway.
2. **Mensageria:** Configurar produtores e consumidores de eventos utilizando RabbitMQ.
3. **Containerização (Abordagem 2):** Estruturar os Dockerfiles utilizando builds em multi-etapas para garantir portabilidade completa do Parent e dos Microsserviços.