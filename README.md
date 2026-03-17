This is a Student Repository for the Udemy's Complete dbt Bootcamp. You can:

1) Either start a codespace and start using dbt right away
2) Or clone this repo with Visual Studio Code and follow the instructions to set up a local dbt environment.

Have fun! :)  




# Sai Notes:

**dbt run --full-refresh**  --- for incrementing table full refresh ex: when schema change happened

code target/run/airbnb/models/dim/dim_listings_cleansed.sql  ----> CHeck target folders when you are using the ephermnal tables to see what was actually passed to snowflake for execution


**dbt seed** ---> seeds (i.e., present in seeds folder which are manual files from your local)  will be populated to snowflake tables 

Sources are abstraction on top of the input data. with few features like checking data-freshness



**dbt compile**---> checks references and template tags are correct.

In production, sources are majorly controlled by other teams.So we are not sure of format or fresh. loaded_at_field in the yaml file is used to check if the data is recent or stale to find the freshness.
dbt source freshness  ---->  Can be used in CICD pipeline to check and fail the pipeline if data is old.



## **Snapshots** 
help you keep the history as your data changes. Like Type2 SCD handling.
3rd type can be done by advanced dbt using the macros to check the data and  perform those checks.
By default dbt ignores the deleted records.
No change in data but some one deleted the data : 


**hard_deletes** config helps if any one deletes the record. 


**invalidate** means when records is deleted then dbt takes a look at snapshot reocrd and updates  the END column indicating the lifecycle of this column has been completed.


**new_record** --> your snapshot table will have an extra column "dbt_is_deleted", and when original record is delted , that flag will be flipped to true.


**dbt snapshot** -----> creates the SCD table mentioned in YAML with original records and some additional metadata columns(DBT_SCD_ID, DBT_UPDATED_AT, DBT_VALID_FROM, DBT_VALID_TO) . Every next time it will update this SCD table.


**dbt build** ---> executes seed,run and snapshot and tests as full package.


    UPDATE AIRBNB.RAW.RAW_LISTINGS SET MINIMUM_NIGHTS=30,
        updated_at=CURRENT_TIMESTAMP() WHERE ID=3176;

    SELECT * FROM AIRBNB.DEV.SCD_RAW_LISTINGS WHERE ID=3176;


    UPDATE AIRBNB.RAW.RAW_HOSTS SET is_superhost='t',
        updated_at=CURRENT_TIMESTAMP() WHERE ID=12424;

    SELECT * FROM AIRBNB.DEV.SCD_RAW_HOSTS WHERE ID=12424;



## **Tests** 
schema.yaml can have any other name to accommodate  tests.
And also models folder/subfolders can have many yaml files as you wish with any names as long as every property for a certian model/source is listed in a single yaml file.


**Generic tests** :  unique and not null are present in Snowflake but are not generally present in DWH to impose the constraints.
    dbt test
    dbt test -x --> Stops the execution after the first failure.
Tests should not return the value for that to get PASS, else it FAILS.

Below is the compiled code for tests stored in the locations:

compiled code at target/compiled/airbnb/models/schema.yml/accepted_values_dim_listings_c_402144aa50808b935742aaf3d361f5bf.sql  ----> This gave the values. So test fails.

**Singular tests** are the custom tests mentioned as normal sql in a seperate file which should be such that it should not return any value to get **PASSED**.

elementary-data.com ---> Service for tests monitoring with open source components to integrate with dbt.

    dbt test -s dim_listings_minimum_nights  --> Only specific test executes

**unit tests** are best for single step functionality tests which work on dummy data and expected data output. can be present under tests folder or the models folder.

    dbt test -s mart_fullmoon_reviews ---> mentioning the model name((instead of test name given)) in the command will test for all the tests present for that particular table.

**Contracts**  enable you to hardcode the schema of a model in yaml file. (in schema.yml file)

**generic tests** are placed under tests/generic folder. In older projects , generic tests will be found in the macros folder.


## Jinja and Macros

Jinja will help to do actual programming in DBT Sqls.

Macros help in creating reusable components that can be used as tests or custom blocks.


To check what is being rendered from Jinja using dbt command:

    dbt compile --inline "{# This is a comment #}{% set my_name = 'Zoltan' %}{{ my_name }}" 


Doesnt work as we have to inform dbt that we are passing a jinja template:

    dbt compile --inline "select_positive_values('dim_listings_cleansed', 'price')"


Works and displays the command formed by rendering:

    dbt compile --inline "{{ select_positive_values('dim_listings_cleansed', 'price') }}"


Compiles and also show the output of the rendered command:

    dbt show --inline "{{ select_positive_values('dim_listings_cleansed', 'price') }}"



**Adapter**(allows us to go down to db level) Documentation: https://docs.getdbt.com/reference/dbt-jinja-functions/adapter?version=1.12


    dbt compile --inline "{{ no_empty_strings(ref('dim_listings_cleansed')) }}"


    dbt compile --inline "SELECT * FROM {{ ref('dim_listings_cleansed') }} WHERE {{ no_empty_strings(ref('dim_listings_cleansed')) }}"


    dbt show --inline "SELECT * FROM {{ ref('dim_listings_cleansed') }} WHERE {{ no_empty_strings(ref('dim_listings_cleansed')) }}"


**Dbt packages** (3rd party packages) for functionalities for any addl requirements where you find several functions, macros, tests etc:  
hub.getdbt.com

    dbt deps  --> establishes connection to DBT HUB which might fail bcoz of corporate proxies and lack of certificates

    dbt run --select fct_reviews --> Fails bcoz schema changed and we have earlier set "on_schema_change = 'fail'"

    dbt run --select fct_reviews --full-refresh 


## Documentation

smiple documenattion is by using description tags.

used to generate the model diagrams, HTMl overviews etc

    dbt docs generate  ---> Generates a json saying "Catalog written to /workspaces/dbt-course/airbnb/target/catalog.json"


Execute a documentation server to view on a HTML page:

    dbt docs serve

1. more sophisticated marddown page: using docs.md file
2. Redesign the overview page : using overview.md file with additional image file stored in s3
3. How to include own assests like images into documentation: assets folder and overview.md file

DAG gets generated and is accessible in the bottom right corner.

    dbt run --select src_hosts+



## Analyses

Execute an ad-hoc query but still use dbt, macros, templating system, model referencing tag system.
These queries will not be materialized but can version control.
    dbt compile

compiled file can be found in target/airbnb/analyses/full_moon_no_sleep.sql . This sql can be executed on Snowflake and can be set up a dashboard.


## Hooks

Lets customize what sqls does dbt executes i.e., injects sqls or macros which are executed when dbt starts/ends/model create start/model create end/...

Can configure on project subfolder/ model level..((Ex: on-run-start and post-hook in dbt_project.yml))
    dbt run

**Use cases:** Event/Audit logging, delivery status tracking


## Grants

Common technical problem in DWH and DBT :  Permissions into DWH can be created but cannot read newly accessed models/tables/views.

Here Grants can be done/executed in post-hook for self/other/tool.

In modern way, we use GRANTS for this accesses granting after each model creation to grant the access to selected role/users.
    dbt run --debug


## Exposures

Configurations that can  point to external resources like reports and dashboards. And they will be integrated and compiled into the documentation. They will direct to dashboard and also integrated into the DAG.

    dbt docs generate
    dbt docs serve



## DBT Fusion

is a faster new engine return in rust. consists parser and compiler with in dbt which will compile and parse without sending the sql query to DWH improving the efficiency.


Earlier in dbt core, the jinja was parsed and sql query was formed which was then sent to DWH to commpile and run i.e., where errors if any will be found out.

https://docs.getdbt.com/docs/fusion/supported-features?version=2.0

Major cloud based DWH without any additional dbt logging can migrate easily to the fusion from core.

You can use the dbt fusion in enterprise projects but cannot be sold as a software. Doesnt stop for individual use.

Installing the dbt vs code extension upgrades the whole project to fusion compatible.

DBT fusion has strict YAML schema checks.


    dbtf


https://github.com/dbt-labs/dbt-autofix  ---> used to upgrade the dbt when needed and fix compatability issues b/w core and any upgrade like fusion.
    dbt-autofix 
    dbt-autofix deprecations ---> makes the fixes needed
    dbtf build 

DBT fusion also 
1. adds intellisense to the code to pop-up errors and also list columns 
2. provides  functionalities(build,sql compile,data preview) on top right corner when writing the code
    
    dbtf system install-drivers ---> install arrow based db connectors ((adbc)
    dbtf system update



# Advanced Topics:

https://github.com/great-expectations/great_expectations  ---> Data Testing library

https://github.com/calogica/dbt-expectations    ----> Older maintained by calogica

https://github.com/calogica/dbt-expectations#table-shape 

https://github.com/metaplane/dbt-expectations  ---> updated in the packages.yml

https://github.com/metaplane/dbt-expectations#available-tests


dbt test --select dim_listings_w_hosts

To run a test onthe source directly: (This also runs a row_count match test on thefinal dim table which uses this table)
   
    dbt test --select source:airbnb.listsings


Regex to check if that columnmatchs a pattern:(along with debug for universal approach but not best practise)

    dbt --debug test --select source:airbnb.listings


# Debugging and Logging

Create a logging macro and runbelowcommand:

    dbt run-operation learn_logging


# Variables

2 Typesof variables: 
Jinja---> defined in jinja language
dbt ---> are the project variables and can be passed to dbt thru cmd line or project descriptor file
 
    dbt run-operation learn_variables --vars '{"user_name" : "Sai Kumar"}'


How to control the error message with the missing dbt variables:
    
1.cmd line arguments
    
2.decalare vars in dbt_project yaml file
    
3.decalre inline in the variable dclaration line 


    dbt run --select fct_reviews.sql   -----> Fullincremental
    

    dbt run --select fct_reviews  --vars '{start_date: "2024-02-15 00:00:00", end_date: "2024-03-15 23:59:59"}'  ----> Run for seecific date range 

Advanced srategies in dbt production for increment/merge strategies for ensuring new data overwrites old data and doesnt provide any duplicates:
     https://docs.getdbt.com/docs/build/incremental-strategy?version=1.12


# Orchestration

Many tools like Airflow, Azure DataFactory, dagster, Prefect, dbt Cloud etc


https://docs.getdbt.com/docs/deploy/deployment-tools

Airflow can only launch DBT tasks anddoesnt integrate into models to check the failed/successed status.

Prefect is much modern(Python). Simple integration with dbt. 

ADF for dbt is not tight integration . It can only run/build.


dbt cloud is good but paid proprietary.

dagster is a new gen tool with general or dbt orchestration or modern data stack. Moelsfro dbt and assets from dagster are some kind of similar. VERY TIGHT ORCHESTRATION FOR DBT.

 
    dagster-dbt project scaffold --project-name my_dbt_dagster_project --dbt-project-dir=airbnb

    cd '/workspaces/dbt-course/my_dbt_dagster_project

    code my_dbt_dagster_project/schedules.py and uncomment the code

    dagster dev ---> Can also be used in Prod