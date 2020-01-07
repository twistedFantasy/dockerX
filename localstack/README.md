LocalStack spins up the following core Cloud APIs on your local machine:
* API Gateway at http://localhost:4567
* Kinesis at http://localhost:4568
* DynamoDB at http://localhost:4569
* DynamoDB Streams at http://localhost:4570
* S3 at http://localhost:4572
* Firehose at http://localhost:4573
* Lambda at http://localhost:4574
* SNS at http://localhost:4575
* SQS at http://localhost:4576
* Redshift at http://localhost:4577
* Elasticsearch Service at http://localhost:4578
* SES at http://localhost:4579
* Route53 at http://localhost:4580
* CloudFormation at http://localhost:4581
* CloudWatch at http://localhost:4582
* SSM at http://localhost:4583
* SecretsManager at http://localhost:4584
* StepFunctions at http://localhost:4585
* CloudWatch Logs at http://localhost:4586
* EventBridge (CloudWatch Events) at http://localhost:4587
* STS at http://localhost:4592
* IAM at http://localhost:4593
* EC2 at http://localhost:4597
* KMS at http://localhost:4599

In addition to the above, the Pro version of LocalStack supports additional APIs and advanced features,
see [github.com](https://github.com/localstack/localstack) for more information

### Local Development
1/ Start localstack with sqs,sns,s3,redshift,ec2,iam,lambda AWS services and awscli service which has installed 
 [AWS Command Line Interface](https://aws.amazon.com/cli/) and send create requests for sqs queue, s3 bucket and sns topic to localstack when it ready

```
$ docker-compose -f docker-compose.yml up -d
Creating network "localstack_network" with the default driver
Creating volume "localstack_localstack-data" with default driver
Pulling localstack (localstack/localstack:0.10.7)...
Pulling awscli (xueshanf/awscli:)...
...
Creating localstack_localstack_1 ... done
Creating localstack_awscli_1     ... done
```

2/ Check that localstack is up and awscli exited successfully with 0 code
```
localstack_awscli_1       bash -c curl -s -o /dev/nu ...   Exit 0                                             
localstack_localstack_1   docker-entrypoint.sh             Up       0.0.0.0:4567->4567/tcp, 0.0.0.0:4568->4568/tcp, 0.0.0.0:4569->4569/tcp, 0.0.0.0:4570->4570/tcp, 0.0.0.0:4571->4571/tcp, 0.0.0.0:4572->4572/tcp, 0.0.0.0:4573->4573/tcp,   
                                                                    0.0.0.0:4574->4574/tcp, 0.0.0.0:4575->4575/tcp, 0.0.0.0:4576->4576/tcp, 0.0.0.0:4577->4577/tcp, 0.0.0.0:4578->4578/tcp, 0.0.0.0:4579->4579/tcp, 0.0.0.0:4580->4580/tcp,   
                                                                    0.0.0.0:4581->4581/tcp, 0.0.0.0:4582->4582/tcp, 0.0.0.0:4583->4583/tcp, 0.0.0.0:4584->4584/tcp, 4585/tcp, 4586/tcp, 4587/tcp, 4588/tcp, 4589/tcp, 4590/tcp, 4591/tcp,     
                                                                    4592/tcp, 4593/tcp, 4594/tcp, 4595/tcp, 4596/tcp, 4597/tcp, 0.0.0.0:8080->8080/tcp   
```

3/ Check localstack logs
```
$ docker-compose -f docker-compose.yml logs -f localstack
localstack_1  | Waiting for all LocalStack services to be ready
localstack_1  | 2020-01-07 11:50:54,613 CRIT Supervisor is running as root.  Privileges were not dropped because no user is specified in the config file.  If you intend to run as root, you can set user=root in the config file to avoid this message.
localstack_1  | 2020-01-07 11:50:54,616 INFO supervisord started with pid 13
localstack_1  | 2020-01-07 11:50:55,619 INFO spawned: 'dashboard' with pid 19
localstack_1  | 2020-01-07 11:50:55,621 INFO spawned: 'infra' with pid 20
localstack_1  | 2020-01-07 11:50:55,632 INFO success: dashboard entered RUNNING state, process has stayed up for > than 0 seconds (startsecs)
localstack_1  | (. .venv/bin/activate; bin/localstack web)
localstack_1  | (. .venv/bin/activate; exec bin/localstack start --host)
localstack_1  | Starting local dev environment. CTRL-C to quit.
localstack_1  | 2020-01-07 11:50:57,134 INFO success: infra entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
localstack_1  | 2020-01-07T11:50:59:WARNING:bootstrap.py: Unable to load plugins from file /opt/code/localstack/.venv/lib/python3.7/site-packages/localstack_ext/plugins.py: No module named 'localstack_ext.utils.aws.aws_models'
localstack_1  | Waiting for all LocalStack services to be ready
localstack_1  | Starting mock EC2 (http port 4597)...
localstack_1  | Starting mock IAM (http port 4593)...
localstack_1  | Starting mock Lambda service (http port 4574)...
localstack_1  | Starting mock CloudWatch Logs (http port 4586)...
localstack_1  | Starting mock Redshift (http port 4577)...
localstack_1  | Starting mock S3 (http port 4572)...
localstack_1  | Starting mock SNS (http port 4575)...
localstack_1  | Starting mock SQS (http port 4576)...
localstack_1  | 2020-01-07T11:51:01:INFO:localstack.multiserver: Starting multi API server process on port 51492
localstack_1  | 2020-01-07 11:51:01,827:API:  * Running on http://0.0.0.0:4556/ (Press CTRL+C to quit)
localstack_1  | 2020-01-07 11:51:01,827:API:  * Running on http://0.0.0.0:4556/ (Press CTRL+C to quit)
localstack_1  | 2020-01-07 11:51:01,827:API:  * Running on http://0.0.0.0:4556/ (Press CTRL+C to quit)
localstack_1  | 11:51:02.988 [main] INFO  org.elasticmq.server.Main$ - Starting ElasticMQ server (0.15.2) ...
localstack_1  | 11:51:03.724 [elasticmq-akka.actor.default-dispatcher-3] INFO  akka.event.slf4j.Slf4jLogger - Slf4jLogger started
localstack_1  | 11:51:04.917 [elasticmq-akka.actor.default-dispatcher-2] INFO  o.e.rest.sqs.TheSQSRestServerBuilder - Started SQS rest server, bind address 0.0.0.0:4561, visible server address http://dekabrist:4576
localstack_1  | 11:51:04.918 [main] INFO  org.elasticmq.server.Main$ - === ElasticMQ server (0.15.2) started in 2683 ms ===
localstack_1  | Waiting for all LocalStack services to be ready
localstack_1  | 11:51:12.871 [elasticmq-akka.actor.default-dispatcher-4] INFO  o.elasticmq.actor.QueueManagerActor - Creating queue QueueData(test-localstack-queue,MillisVisibilityTimeout(300000),PT0S,PT10S,2020-01-07T11:51:12.759Z,2020-01-07T11:51:12.759Z,None,false,false,None,None,Map())
localstack_1  | 2020-01-07T11:51:14:WARNING:infra.py: Service "s3" not yet available, retrying...
localstack_1  | 2020-01-07 11:51:14,987:API: 127.0.0.1 - - [07/Jan/2020 11:51:14] "PUT /test-localstack-bucket HTTP/1.1" 200 -
...
```

4/ Check output from awscli in order to get created aws resources urls
```
$ docker-compose -f docker-compose.yml logs -f awscli
Attaching to localstack_awscli_1
awscli_1      | {
awscli_1      |     "QueueUrl": "http://localhost:4576/queue/test-localstack-queue"
awscli_1      | }
awscli_1      | {
awscli_1      |     "TopicArn": "arn:aws:sns:us-east-1:000000000000:test-localstack-topic"
awscli_1      | }
localstack_awscli_1 exited with code 0
``` 

5/ If needed, play with created aws resources from our favourite programming language

5/ Stop localstack
```
$ docker-compose -f docker-compose.yml stop
Stopping localstack_localstack_1 ... done
```

5/ Delete created containers, networks & volumes
```
$ docker-compose -f docker-compose.yml down -v
Removing localstack_awscli_1     ... done
Removing localstack_localstack_1 ... done
Removing network localstack_network
Removing volume localstack_localstack-data
```

### Docker Swarm

1/ Create [docker swarm](../readme/DOCKER_SWARM.md)

2/ Deploy services in docker swarm
```
$ docker stack deploy -c docker-stack.yml twistedfantasy-localstack
Creating network twistedfantasy-localstack_network
Creating service twistedfantasy-localstack_localstack
Creating service twistedfantasy-localstack_awscli
```

3/ Check list of stacks
```
$ docker stack ls
NAME                        SERVICES            ORCHESTRATOR
twistedfantasy-localstack   2                   Swarm
```

4/ Check the list of tasks in the stack. awscli DESIRED STATE will change from `Running` to `Shutdown` when commands will be executed successfully
```
$ docker stack ps twistedfantasy-localstack
ID                  NAME                                     IMAGE                          NODE                DESIRED STATE       CURRENT STATE           ERROR               PORTS
bpo0xli6m7hz        twistedfantasy-localstack_awscli.1       xueshanf/awscli:latest         dekabrist           Running             Running 6 seconds ago                       
zmn9d3634ot2        twistedfantasy-localstack_localstack.1   localstack/localstack:0.10.7   dekabrist           Running             Running 9 seconds ago 
```

5/ Check list of services in the stack
```
$ docker stack services twistedfantasy-localstack
ID                  NAME                                   MODE                REPLICAS            IMAGE                          PORTS
31pk3acxz8u8        twistedfantasy-localstack_localstack   replicated          1/1                 localstack/localstack:0.10.7   *:4567-4584->4567-4584/tcp, *:8080->8080/tcp
i08bxvl7y62f        twistedfantasy-localstack_awscli       replicated          0/1                 xueshanf/awscli:latest    
```

6/ Check logs of localstack service
```
$ docker service logs -f twistedfantasy-localstack_localstack
| Waiting for all LocalStack services to be ready
| 2020-01-07 11:55:17,335 CRIT Supervisor is running as root.  Privileges were not dropped because no user is specified in the config file.  If you intend to run as root, you can set user=root in the config file to avoid this message.
| 2020-01-07 11:55:17,341 INFO supervisord started with pid 13
| 2020-01-07 11:55:18,346 INFO spawned: 'dashboard' with pid 19
| 2020-01-07 11:55:18,349 INFO spawned: 'infra' with pid 20
| (. .venv/bin/activate; bin/localstack web)
| 2020-01-07 11:55:18,361 INFO success: dashboard entered RUNNING state, process has stayed up for > than 0 seconds (startsecs)
| (. .venv/bin/activate; exec bin/localstack start --host)
| 2020-01-07 11:55:19,369 INFO success: infra entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
| Starting local dev environment. CTRL-C to quit.
| Waiting for all LocalStack services to be ready
| 2020-01-07T11:55:25:WARNING:bootstrap.py: Unable to load plugins from file /opt/code/localstack/.venv/lib/python3.7/site-packages/localstack_ext/plugins.py: No module named 'localstack_ext.utils.aws.aws_models'
| Starting mock EC2 (http port 4597)...
| 2020-01-07T11:55:27:INFO:localstack.multiserver: Starting multi API server process on port 51492
| Starting mock IAM (http port 4593)...
| Starting mock Lambda service (http port 4574)...
| Starting mock CloudWatch Logs (http port 4586)...
| Starting mock Redshift (http port 4577)...
| Starting mock S3 (http port 4572)...
| Starting mock SNS (http port 4575)...
| Starting mock SQS (http port 4576)...
| 2020-01-07 11:55:28,659:API:  * Running on http://0.0.0.0:4556/ (Press CTRL+C to quit)
| 2020-01-07 11:55:28,659:API:  * Running on http://0.0.0.0:4556/ (Press CTRL+C to quit)
| 2020-01-07 11:55:28,659:API:  * Running on http://0.0.0.0:4556/ (Press CTRL+C to quit)
| 11:55:29.611 [main] INFO  org.elasticmq.server.Main$ - Starting ElasticMQ server (0.15.2) ...
| 11:55:30.328 [elasticmq-akka.actor.default-dispatcher-2] INFO  akka.event.slf4j.Slf4jLogger - Slf4jLogger started
| Waiting for all LocalStack services to be ready
...
```

7/ Check logs of awscli service
```
$ docker service logs -f twistedfantasy-localstack_awscli
{
    "QueueUrl": "http://localhost:4576/queue/test-localstack-queue"
}
{
    "TopicArn": "arn:aws:sns:us-east-1:000000000000:test-localstack-topic"
}
```

8/ Bring the stack down
```
$ docker stack rm twistedfantasy-localstack
Removing service twistedfantasy-localstack_awscli
Removing service twistedfantasy-localstack_localstack
Removing network twistedfantasy-localstack_network
```

9/ Leave [docker swarm](../readme/DOCKER_SWARM.md)

### Useful resources: <br/>
* [Image on docker hub](https://hub.docker.com/r/localstack/localstack)
* [LocalStack on github](https://github.com/localstack/localstackn)
