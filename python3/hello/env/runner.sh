#!/bin/bash

python-lambda-local -e env.json -f handler -t 5 getenv.py event.json
