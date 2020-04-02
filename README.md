# Cloudstack CLI

## Get started

```sh
docker run --rm -it \
  -v $(pwd)/cloudstack.yml:/root/.cloudstack.yml:z \
  wtsh-io/cloudstack-cli help
```

### Building the image

`docker build . -t wtsh-io/cloudstack-cli`

### Pre requisites
Run your container with the following environment variables:
- CLOUDSTACK_API_URL
- CLOUDSTACK_API_KEY
- CLOUDSTACK_SECRET_KEY

Or you can also map your cloudstack.yml file to /root/.cloudstack.yml