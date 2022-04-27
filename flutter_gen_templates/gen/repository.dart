{% for file in import_files %}
{{ file }}
{% endfor %}

abstract class AppRepository {
  {% for method in methods %}
  {{ method }};
  
  {% endfor %}
}
{% set comma = joiner(",") %}
class AppRepositoryImpl extends AppRepository{% if repo_classes|length %} with {% for class_name in repo_classes %}{{ class_name }}{{ ", " if not loop.last else "" }}{% endfor %}{% else %}{% endif %} {}
