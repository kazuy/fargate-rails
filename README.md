# fargate-rails

## Build for development

```
$ docker-compose build
$ docker-compose up
```

## Build for production

```
$ docker-compose -f docker-compose.deploy.yml build --build-arg AWS_ACCESS_KEY_ID=<your-aws-access-key-id> --build-arg AWS_SECRET_ACCESS_KEY=<your-aws-secret-access-key> app
$ docker-compose -f docker-compose.deploy.yml up
```
