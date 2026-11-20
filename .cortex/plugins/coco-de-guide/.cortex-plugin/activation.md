# coco-de-guide

Data engineering plugin for the CoCo DE Guide dbt project (Snowflake, `DEMO_DB.TPCH_TRANSFORMED`).

Includes:

- **Skills** (`./skills`): team dbt conventions, such as `new-dbt-model` for creating models with `source()` references, primary key tests, and `dbt build`.
- **Agents** (`./agents`): subagents for autonomous tasks, such as reviewing changed dbt models against the conventions.
- **Hooks** (`./hooks/hooks.json`): guardrails, such as blocking dbt commands that target production.
