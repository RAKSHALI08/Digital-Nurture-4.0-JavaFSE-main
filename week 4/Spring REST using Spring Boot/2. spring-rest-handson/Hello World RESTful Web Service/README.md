# Spring Learn - Hello World REST API

## Description
A simple Spring Boot REST API that returns "Hello World!!" on `/hello` endpoint.

## How to Run

1. **Build the project**
```bash
mvn clean install
```

2. **Run the application**
```bash
mvn spring-boot:run
```

3. **Try the API**
Open browser or Postman and go to:
```
http://localhost:8083/hello
```

You should see: `Hello World!!`

## Notes for SME
- In Chrome > DevTools > Network tab → Inspect request → See **Headers** section.
- In Postman → Click "Headers" tab after sending request → See response/request headers.
