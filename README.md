# README

## Environment

### Ruby Version
`3.2.11`

### Rails Version
`6.1.7`

## Database Setup

### Create the database
```bash
rails db:create
```

### Run migrations
```bash
rails db:migrate
```

### Populate the database with initial data
```bash
rails db:seed
```
### Install Webpacker
```bash
rails webpacker:install
```

### Run Elastic Search
To run a local Elastic Search instance with Docker:
```bash
  docker run \
    --name elasticsearch-rails-searchapp \
    --publish 9200:9200 \
    --env "discovery.type=single-node" \
    --env "cluster.name=elasticsearch-rails" \
    --env "cluster.routing.allocation.disk.threshold_enabled=false" \
    --rm \
    -v esdata:/usr/share/elasticsearch/data \
    docker.elastic.co/elasticsearch/elasticsearch:7.6.0
```

### Run Redis for Sidekiq Queues
```bash
docker run -d --name redis -p 6379:6379 redis:8.6.2
```

### Run the app in development mode
```bash
rails server
```