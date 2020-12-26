# How
```
docker build -t lambdalocal .
docker run -it --rm -p8008:8008 lambdalocal
```

# Test
```
curl --request POST \
  --url http://localhost:8008/ \
  --header 'content-type: application/json' \
  --data '{
    "event": {
        "key1": "value1",
        "key2": "value2",
        "key3": "value3"
    }
  }'
```

# Ref
https://www.npmjs.com/package/lambda-local  
