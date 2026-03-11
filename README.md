This is a Student Repository for the Udemy's Complete dbt Bootcamp. You can:

1) Either start a codespace and start using dbt right away
2) Or clone this repo with Visual Studio Code and follow the instructions to set up a local dbt environment.

Have fun! :)  




# Sai Notes:

**dbt run --full-refresh **  --- for incrementing table full refresh ex: when schema change happened

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


**Generic tests : ** unique and not null are present in Snowflake but are not generally present in DWH to impose the constraints.
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


**Dbt packages **(3rd party packages) for functionalities for any addl requirements where you find several functions, macros, tests etc:  
hub.getdbt.com

dbt deps  --> establishes connection to DBT HUB which might fail bcoz of corporate proxies and lack of certificates

dbt run --select fct_reviews --> Fails bcoz schema changed and we have earlier set "on_schema_change = 'fail'"

dbt run --select fct_reviews --full-refresh 
