# Create bucket
```
aws --endpoint-url=http://localhost:4566 s3 mb s3://demo-bucket
aws --endpoint-url=http://localhost:4566 s3api put-bucket-acl --bucket demo-bucket --acl public-read
```

# List bucket
```
aws --endpoint-url=http://localhost:4566 s3 ls
aws --endpoint-url=http://localhost:4566 s3 ls s3://demo-bucket
```

# Update
```
aws --endpoint-url=http://localhost:4566 s3 cp .env s3://demo-bucket/
aws --endpoint-url=http://localhost:4566 s3 ls s3://demo-bucket
```

