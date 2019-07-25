# dockerX

The goal of this repository is to provide huge amount of examples for using docker with different software products like
PostgreSQL, Nginx, Elasticsearch and etc. Examples contains version for local usage during development and configurations
for Docker Swarm. In order to use these examples it's recommended to have at least `18.06.1` version of docker installed. 
Some examples contain Vagrant file which simplify creation of virtual machine for you with needed version of docker installed.
Any contributors are welcome!

## Docker & Docker-Compose installation
``` 
https://docs.docker.com/install/linux/docker-ce/
https://github.com/docker/compose/releases
```

## VirtualBox & Vagrant installation
``` 
https://www.virtualbox.org/wiki/Downloads
https://www.vagrantup.com/docs/installation/
```

## Available docker examples 
* [Elasticsearch](./elasticsearch/README.md) is a search engine based on the Lucene library. It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents. Elasticsearch is developed in Java. Following an open-core business model, parts of the software are licensed under various open-source licenses (mostly the Apache License), while other parts fall under the commercial (source-available) Elastic License. Official clients are available in Java, .NET (C#), PHP, Python, Apache Groovy, Ruby and many other languages. According to the DB-Engines ranking, Elasticsearch is the most popular enterprise search engine followed by Apache Solr, also based on Lucene.<br/>

* [MariaDB](./mariadb/README.md) is a community-developed, commercially supported fork of the MySQL relational database management system (RDBMS), intended to remain free and open-source software under the GNU General Public License. Development is led by some of the original developers of MySQL, who forked it due to concerns over its acquisition by Oracle Corporation.<br/>

* [MongoDB](./mongodb/README.md) is a cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with schema. MongoDB is developed by MongoDB Inc. and licensed under the Server Side Public License (SSPL).<br/>

* [MySQL](./mysql/README.md) is an open-source relational database management system (RDBMS). Its name is a combination of "My", the name of co-founder Michael Widenius's daughter, and "SQL", the abbreviation for Structured Query Language.<br/>

* [Portainer](./portainer/README.md) is a simple management solution for Docker. It consists of a web UI that allows you to easily manage your Docker containers, images, networks and volumes.<br/>

* [PostgreSQL](./postgresql/README.md), also known as Postgres, is a free and open-source relational database management system (RDBMS) emphasizing extensibility and technical standards compliance. It is designed to handle a range of workloads, from single machines to data warehouses or Web services with many concurrent users. It is the default database for macOS Server, and is also available for Linux, FreeBSD, OpenBSD, and Windows.<br/>

* [RabbitMQ](./rabbitmq/README.md) is an open-source message-broker software (sometimes called message-oriented middleware) that originally implemented the Advanced Message Queuing Protocol (AMQP) and has since been extended with a plug-in architecture to support Streaming Text Oriented Messaging Protocol (STOMP), Message Queuing Telemetry Transport (MQTT), and other protocols.<br/>

* [Redis](./redis/README.md) is an in-memory data structure project implementing a distributed, in-memory key-value database with optional durability. Redis supports different kinds of abstract data structures, such as strings, lists, maps, sets, sorted sets, HyperLogLogs, bitmaps, streams, and spatial indexes. The project is mainly developed by Salvatore Sanfilippo and as of 2019, is sponsored by Redis Labs. It is open-source software released under a BSD 3-clause license.<br/>


## Docker official sandbox
```
https://labs.play-with-docker.com/
```
