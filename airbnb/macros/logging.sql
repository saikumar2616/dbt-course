{% macro learn_logging() %}
  {% do log("This is a log message from the learn_logging macro!", info=True) %} --info prints on the console and is also stored in the logs
  {% do log("This is a warning message from the learn_logging macro!", warn=True) %}
  {% do log("This is an error message from the learn_logging macro!", error=True) %}
  {# log("This way the log will not get executedtreating it as acomment")} #}
{% endmacro %}