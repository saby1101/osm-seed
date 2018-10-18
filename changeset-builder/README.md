# Changeset builder


#### Building the container


```
  cd osm-processor/
  docker build -t osmseed-changeset-builder:v1 .
```

#### Running the container

```
  docker run --env-file ./../.env \
  --network osm-seed_default \
  -v $(pwd)/../changeset-builder-files:/app/data \
  -i -t osmseed-changeset-builder:v1
```