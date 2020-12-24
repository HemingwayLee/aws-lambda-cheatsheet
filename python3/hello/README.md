# Install
```
pip3 install python-lambda-local
```

# How to run
```
python-lambda-local -f handler -t 5 hello.py event.json
python-lambda-local -f handler -t 5 hello2.py event.json
python-lambda-local -f lambda_handler -t 5 response.py event.json
```

* `-t`: timeout

# Note
the `event.json` must be provided



