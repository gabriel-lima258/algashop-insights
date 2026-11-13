# AlgaShop Insights

Servico de relatorios estrategicos do AlgaShop. Ele le o **reporting database**, um Postgres
separado que o ETL (Kafka Connect + Debezium, com CDC por log) alimenta com copias dos dados
do ordering e do product-catalog. O insights so le esse banco; quem escreve e o ETL.

| | |
|---|---|
| Porta | 8086 |
| Banco | `algashop-insights-postgres`, `localhost:5434/insights` |
| Java / Spring Boot | 25 / 4.0.6 |

## Rodar

1. `docker compose -f docker-compose.tools.yml up -d algashop-insights-postgres` (no algashop-meta).
2. `./gradlew bootRun` (perfil `development`).

## Documentacao

`docs/08-relatorios/` no algashop-meta, a partir de `05-relatorios-estrategicos-e-reporting-database.md`.
