{% macro learn_logging() %}
  {% do log("This is a log message from the learn_logging macro!", info=True) %} --info prints on the console and is also stored in the logs
  {% do log("This is a warning message from the learn_logging macro!", warn=True) %}
  {% do log("This is an error message from the learn_logging macro!", error=True) %}
  {# log("This way th log will not get display") #} -- this log will not get printed because it is not assigned to a variable and does not have a log level
{% endmacro %}