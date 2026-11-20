#!/bin/bash
# validate-bash.sh — PreToolUse hook for the bash tool.
# Blocks any dbt command that targets production (--target prod, --target=prod, -t prod).
INPUT=$(cat)

if echo "$INPUT" | grep -Eq '(^|[^[:alnum:]_-])dbt[[:space:]]' &&
   echo "$INPUT" | grep -Eq '(--target[[:space:]=]+|-t[[:space:]]+)["'\'']?prod([^[:alnum:]_-]|$)'; then
  echo "Blocked: direct production dbt runs (--target prod) are not allowed from CoCo. Deploy to production through the CI/CD pipeline instead." >&2
  exit 2
fi

exit 0
