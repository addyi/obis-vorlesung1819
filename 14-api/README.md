# REST API

Was ist eine REST API?

**Aufgabe**: Mit [Postman][pm] die APIs [SWAPI] **und** [JSONPlaceholder][jp] anschauen

--------------------------------------------------------------------------------

- Representational State Transfer (REST)
- Möglichkeit der Client-Server-Kommunikation
- Per HTTP werden Requests an den Server gestellt

Es gibt verschiedenste [HTTP Request Methoden][httpmethodes] die CRUD Funktionalität und darüber hinaus zur Verfügung stellen:

CRUD   | Methoden
------ | ----------
Create | POST, PUT
Read   | GET
Update | PUT, PATCH
Delete | DELETE

Methode | Operation
------- | -------------------------------
GET     | read
POST    | create
PUT     | replace / full update
PATCH   | update
DELETE  | delete
OPTION  | communication options
HEAD    | GET without body (siehe [ETag])
...     | ...

Auf jede Anfrage wird ein [Statuscode][scode] zurück geliefert:

Code | Nachricht
---- | ---------------------
200  | OK
201  | Created
304  | Not Modified
400  | Bad Request
401  | Unauthorized
403  | Forbidden
404  | Not Found
418  | I'm a teapot
500  | Internal Server Error

Es gibt noch viele weitere [Statuscodes][httpcodes]!!!

# Best Practices

Eine gute Zusammenfassung von Best Practices beim REST API Design sind in dem [Blog Post][bpost] von [Philipp Hauer][phblog] zu finden.

# API Schreiben

JAVA/Kotlin

- Spring

Python

- [PyGreSQL](http://www.pygresql.org/)
- [Django](https://www.django-rest-framework.org/)

JS/Node.js

- [node-postgres](https://github.com/brianc/node-postgres)
- [hapi.js](https://hapijs.com/)

[bpost]: https://blog.philipphauer.de/restful-api-design-best-practices/
[etag]: https://de.wikipedia.org/wiki/HTTP_ETag#Ablauf
[httpcodes]: https://httpstatuses.com/
[httpmethodes]: https://de.wikipedia.org/wiki/Hypertext_Transfer_Protocol#HTTP-Anfragemethoden
[jp]: http://jsonplaceholder.typicode.com/
[phblog]: https://blog.philipphauer.de/
[pm]: https://www.getpostman.com/
[scode]: https://de.wikipedia.org/wiki/HTTP-Statuscode
[swapi]: https://swapi.co/
