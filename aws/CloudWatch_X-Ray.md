### CloudWatch

#### Data
##### composition
- Namespace = container for metrics (AWS/Lambda/.... AWS/EC2/.....)
- datapoint = timestamp, value,
- metric, time ordered set of datapoints (cpu Untilization, diskWriteBytes...)
	- each metric = metric name + namespace
- dimension
	- name/value pair

##### resolution
	standard 60s granularity, "frequency"

##### retention
	 as data ages, aggregated and stored for longer with less resolution
	sub 60s, retains 3hrs
	 60s, retained for 15days
	 300s, 63days
	 ....


##### Logs - subscriptions
- logGroup -> subscription filter -> Kinesis Data Firehose (**near real time**, cost effective)-> s3
- real time needs:
	- aws managed Lambda-> RT elasticsearch
	- custom Lambda
	- Kinesis data stream as destination, integrate with KCL (kinesis client library)

##### Logs - aggregation
![[aws_cw_logs_summary-20240224171718.png]]


### X-Ray
distributed tracing, on serverless or distributed application, API gateway, DynamoDB, ....
- Tracing header
- segments: data blocks, request
- subsegments: granular of above
- service graph: json doc, detailing **service+resources** in the app
- service map: visual version of the graph showing traces, shows the flow through a distributed app, including **response time, requests, any error/issues**

##### usage in different resource
- EC2 - default installed X-Ray agent, but need (1) EC2 instance role with CW permissions (2) CWAgent installed with configuration
- ECS - Agent in tasks
- Lambda - enable option
- Beanstalk - agent preinstalled
- API gateway - per stage option
- SNS/SQS, requires IAM permission


### VPC Flow Logs - can't provide rt logs
- only capture metadata, NO CONTENT
- aren't real time, delay between traffic entering/leaving monitored interface and showing up
- log destinations: s3/ cloudwatch logs; or query with Athena
- 3 methods:
	- attaches to a VPC- All ENIs in that VPC (which has multiple subnets)
	- attaches to subnet - All ENIs in that subnet
	- attaches to ENI directly - specific elastic network interface (ENI)
- capture ACCETPED, REJECTED or ALL metadata
- protocol number 
	- ICMP=1, not used for data transmission, but for network management and troubleshooting
	- TCP=6
	- UDP=17, faster and simpler, but less reliable and more prone to error than TCP

![[aws_example _networkping-20240224174050.png]]

one accept followed by a reject, meaning flow logs are used
- what will be logged
	- Packet SRC/DST
	- Date and Time
	- Ports
	- Allow or Deny