# Setup
```
docker build -t mylambda .
docker run -it --rm -p 9000:8080 mylambda
```

# Test the running lambda
```
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```



