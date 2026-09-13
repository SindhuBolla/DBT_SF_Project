{% test no_future_dates(model, column_name) %}

    SELECT {{ column_name }}
    FROM {{ model }}
    WHERE {{ column_name }} > 2026

{% endtest %}