This is a Student Repository for the Udemy's Complete dbt Bootcamp. You can:

1) Either start a codespace and start using dbt right away
2) Or clone this repo with Visual Studio Code and follow the instructions to set up a local dbt environment.

Have fun! :)  




# Sai Notes:

dbt run --full-refresh   --- for incrementing table full refresh ex: when schema change happened

code target/run/airbnb/models/dim/dim_listings_cleansed.sql  ----> CHeck target folders when you are using the ephermnal tables to see what was actually passed to snowflake for execution