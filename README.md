## Global Registry

This is a centralized registy containing information of all services running and their respective endpoints. Each adapter queries this global registry with the required service name and the registry returns a list of endpoints of the requested service.

## Build

`docker build -t registry .`

## Start test

`docker run -e deployment_type="test" -p 4658:4556 -it registry:latest `

## Test

## Start prod

`docker run -e deployment_type="prod" -p 4558:4556 -it registry:latest `

## Test


```
pip install -r requirements.txt
python test_client.py
```
# test-gpu
