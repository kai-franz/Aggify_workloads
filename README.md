# Aggify_workloads
This includes all TPCH, open source, real (anonymized) workloads used for Aggify experimentation. 

## Scripts
 - `sql_server_configuration.sql`: Configures SQL Server to enable CLR UDTs/UDFs/UDAs.
 - `TPC-H Cursor Loop Workload/`
   - `cp_data_to_docker.sh`: Copies data from local machine to SQL Server's Docker container.
   - `tpch_create_load.sql`: Creates TPC-H tables and bulk loads data.
   - `compile_q13.sh`: Compiles the Q13 UDA + SingleReturn UDT.
   - `Q13-CustomerDistribution/`
     - `install.sql`: Installs the OrdersByCustomer1 UDA + SingleReturn UDT into SQL Server.