# docker = ❤️

The goal of this repository is to provide huge amount of examples for using docker with different software products like
PostgreSQL, Nginx, Elasticsearch and etc. Examples contains version for local usage during development and configurations
for [Docker Swarm](https://docs.docker.com/engine/swarm/). In order to use these examples it's recommended to have at least `19.03.5` version of docker installed.
Some examples contain Vagrant file which simplify creation of virtual machine for you with needed version of docker installed.
If Dockerfile, docker-compose.yml files for some software are missing and you need them just open pull request and I will add them asap. 
I have big amount of raw examples which was used in different projects, but don't have enough time to make them clear enough for this repository.
I have a huge passion to help other engineers solve their difficulties related to Docker,
so don't worry about annoying me to provide some example :)
Any contributors are welcome!

## Installation & Configuration
* [docker](./readme/DOCKER.md)
* [docker-compose](./readme/DOCKER_COMPOSE.md)
* [virtualbox](./readme/VIRTUALBOX.md)
* [vagrant](./readme/VAGRANT.md)
* [docker swarm](./readme/DOCKER_SWARM.md)

## Available docker examples 
* [Elasticsearch](https://github.com/twistedFantasy/dockerX/tree/master/elasticsearch) is a search engine based on the Lucene library.
 It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents.
 Elasticsearch is developed in Java. Following an open-core business model, parts of the software are licensed under various open-source licenses (mostly the Apache License), while other parts fall under the commercial (source-available) Elastic License. Official clients are available in Java, .NET (C#), PHP, Python, Apache Groovy, Ruby and many other languages. According to the DB-Engines ranking, Elasticsearch is the most popular enterprise search engine followed by Apache Solr, also based on Lucene.<br/>

* [MariaDB](https://github.com/twistedFantasy/dockerX/tree/master/mariadb) is a community-developed, commercially supported
 fork of the MySQL relational database management system (RDBMS), intended to remain free and open-source software under
 the GNU General Public License. Development is led by some of the original developers of MySQL, who forked it due toq
 concerns over its acquisition by Oracle Corporation.<br/>

* [MongoDB](https://github.com/twistedFantasy/dockerX/tree/master/mongodb) is a cross-platform document-oriented database program.
 Classified as a NoSQL database program, MongoDB uses JSON-like documents with schema. MongoDB is developed by MongoDB Inc. and licensed
 under the Server Side Public License (SSPL).<br/>

* [MySQL](https://github.com/twistedFantasy/dockerX/tree/master/mysql) is an open-source relational database management system (RDBMS).
 Its name is a combination of "My", the name of co-founder Michael Widenius's daughter, and "SQL", the abbreviation for Structured Query Language.<br/>

* [Portainer](https://github.com/twistedFantasy/dockerX/tree/master/portainer) is a simple management solution for Docker.
 It consists of a web UI that allows you to easily manage your Docker containers, images, networks and volumes.<br/>

* [PostgreSQL](https://github.com/twistedFantasy/dockerX/tree/master/postgresql), also known as Postgres, is a free and
 open-source relational database management system (RDBMS) emphasizing extensibility and technical standards compliance.
 It is designed to handle a range of workloads, from single machines to data warehouses or Web services with many concurrent users.
 It is the default database for macOS Server, and is also available for Linux, FreeBSD, OpenBSD, and Windows.<br/>

* [RabbitMQ](https://github.com/twistedFantasy/dockerX/tree/master/rabbitmq) is an open-source message-broker
 software (sometimes called message-oriented middleware) that originally implemented the Advanced Message Queuing Protocol (AMQP)
 and has since been extended with a plug-in architecture to support Streaming Text Oriented Messaging Protocol (STOMP),
 Message Queuing Telemetry Transport (MQTT), and other protocols.<br/>

* [Redis](https://github.com/twistedFantasy/dockerX/tree/master/redis) is an in-memory data structure project implementing a distributed,
 in-memory key-value database with optional durability. Redis supports different kinds of abstract data structures, such as strings, lists,
 maps, sets, sorted sets, HyperLogLogs, bitmaps, streams, and spatial indexes. The project is mainly developed by Salvatore Sanfilippo and as of 2019,
 is sponsored by Redis Labs. It is open-source software released under a BSD 3-clause license.<br/>

* [Let's Encrypt](https://github.com/twistedFantasy/dockerX/tree/master/lets-encrypt) Let's Encrypt is a non-profit certificate authority run
 by Internet Security Research Group (ISRG) that provides X.509 certificates for Transport Layer Security (TLS) encryption at no charge.
 The certificate is valid for 90 days, during which renewal can take place at any time. The offer is accompanied by an automated process designed
 to overcome manual creation, validation, signing, installation, and renewal of certificates for secure websites. It launched on April 12, 2016.

* [Docker Registry](https://github.com/twistedFantasy/dockerX/tree/master/registry) This image contains an implementation of the Docker
 Registry HTTP API V2 for use with Docker 1.6+. See github.com/docker/distribution for more details about what it is.
