# docker-coturn

1. cp .env.dist .env
2. docker-compose up -d

## Generate credentials
3. ```. .env && . ./gen_creds.sh``` (You can set credentials expiration limit in gen_creds.sh)
