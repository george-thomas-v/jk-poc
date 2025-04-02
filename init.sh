# set -e

# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
#   CREATE DATABASE machine_task_jk;
#   CREATE DATABASE machine_task_assets_jk;
# EOSQL