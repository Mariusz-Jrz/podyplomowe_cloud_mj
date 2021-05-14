# podyplomowe_cloud_mj

## Tech Stack / Requirements:
1. Python 3.8.8
- awscli==1.19.33
- boto3==1.17.33
- configparser==5.0.2
- awswrangler==2.7.0

2. Anaconda 4.10.1
3. PyCharm Community Edition 2020.2.3
4. Terraform 0.15.1
5. AWS account (classroom "NOSQL Databases")

## AWS Services in use:
1. S3 bucket - used to store data files generated by Python script, and any outputs of transformations done by Lambda functions
![obraz](https://user-images.githubusercontent.com/58702289/118324141-f0886f00-b501-11eb-880d-7e93813fd1b6.png)

2. Kinesis Stream - create to handle continous stream of data from Python script <br>
![obraz](https://user-images.githubusercontent.com/58702289/118324498-6e4c7a80-b502-11eb-9b39-3f7e8c8dd4d8.png)
3. Kinesis Firehose - loads data from Kinesis Stream into S3 bucket <br>
![obraz](https://user-images.githubusercontent.com/58702289/118324612-8d4b0c80-b502-11eb-8263-7bd52b378b0f.png)
4. Glue Catalog - Data Catalog - contains interpretation of data in S3 as tables <br>
![obraz](https://user-images.githubusercontent.com/58702289/118324708-ad7acb80-b502-11eb-8b78-6b2f11cdb903.png)
5. Glue Crawler - used to scan S3 bucket to create Data Catalog <br>
![obraz](https://user-images.githubusercontent.com/58702289/118324763-bf5c6e80-b502-11eb-9581-40de5328829d.png)
6. Lambda - used to hold custom functions to be used during ETL process <br>
![obraz](https://user-images.githubusercontent.com/58702289/118324918-fcc0fc00-b502-11eb-8934-ad7209b51768.png)
7. Athena - used to create tables & query data in SQL-like view <br>
![obraz](https://user-images.githubusercontent.com/58702289/118325029-24b05f80-b503-11eb-8935-2d24c16cb7a1.png)
8. CloudWatch - used to generate logs for running services and troubleshoot <br>
![obraz](https://user-images.githubusercontent.com/58702289/118325108-44478800-b503-11eb-8a87-b17ada4cc72b.png)
9. Kinesis Analytics - used to query in SQL-like language the data coming directly from Streams <br>
![obraz](https://user-images.githubusercontent.com/58702289/118328920-a81f8000-b506-11eb-9f4e-166de4011068.png)

## Workflow schema
![obraz](https://user-images.githubusercontent.com/58702289/118319013-743e5d80-b4fa-11eb-89ca-da18c6241fe4.png)

