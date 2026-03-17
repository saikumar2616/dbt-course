{% macro learn_variables() %}
  {% set my_variable = "This is a variable!" %}
  {% do log(my_variable, info=True) %} -- this will print the value of the variable in the logs


  {% do log("Hello  " ~ var("user_name") ~ ", welcome to dbt!", info=True) %} -- this will print a message that includes the value of the user_name variable in the logs


  {% do log("Hello  " ~ var("user_name","NO USERNAME IS SET.") ~ ", welcome to dbt!", info=True) %} 

{% endmacro %}