🔸 JPA (Java Persistence API)
It is only a specification (like an interface).

Part of Java EE (JSR 338) for object-relational mapping (ORM).

Defines how Java objects map to relational database tables.

Does not provide any implementation — just the rules.

Requires a provider like Hibernate or EclipseLink to work.

Uses EntityManager for persistence operations.

🔸 Hibernate
It is a framework that implements JPA.

Provides additional ORM features beyond JPA.

Can be used with or without JPA (standalone Hibernate API).

Requires manual handling of Session, Transaction, etc.

Commonly used as the default JPA provider.

Helps reduce some boilerplate compared to pure JPA.

🔸 Spring Data JPA
It is a Spring abstraction over JPA (built on top of JPA and Hibernate).

Simplifies data access using repository interfaces like JpaRepository.

Eliminates almost all boilerplate code (no need for EntityManager or Session).

Spring manages transactions automatically with @Transactional.

Supports custom queries, paging, sorting, derived query methods, etc.

Requires a JPA implementation underneath (usually Hibernate).

-----------------------------------------------------------------------------------------
Create a simple Spring Boot project to demonstrate the difference between Hibernate and Spring Data JPA 
