## Required steps
1. Update AWS CLT in ./aws/credentials
2. Open project in PyCharm
3. In terraform folder run following commands: <br>
```terraform plan``` <br>
```terraform apply```

4. Execute ```py data_generator/generator.py -k <user_id>``` in separate terminal


## Optional functionalities
1. Start newly created Glue Crawler in AWS to catalog data in Glue
2. Alternatively use Athena to create tables from S3 data in SQL environment
3. run ```terraform destroy``` to delete all AWS services
