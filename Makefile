help:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli help generate

list:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli list

ts-client:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli generate \
    -i /local/schema.json \
    -g typescript-axios \
    -o /local/openapi-generator/ts

ts-server:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli generate \
    -i /local/schema.json \
    -g nodejs-express-server \
    -o /local/openapi-generator/server
