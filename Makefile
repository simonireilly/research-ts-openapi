og-help:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli help generate

og-list:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli list

og-ts-client:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli generate \
    -i /local/schema.json \
    -g typescript-axios \
    -o /local/openapi-generator/client

og-node-server:
	docker run \
    --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli generate \
    -i /local/schema.json \
    -g nodejs-express-server \
    -o /local/openapi-generator/server

ot-types:
	npx openapi-typescript schema.json --output ./openapi-typescript/schema.ts
