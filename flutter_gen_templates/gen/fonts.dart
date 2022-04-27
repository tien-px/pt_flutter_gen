// DO NOT EDIT. This is code generated via flutter_gen

class FontFamily {
  FontFamily._();

  {% for font in fonts %}
  static const String {{ font.name }} = '{{ font.family_name }}';
  {% endfor %}
}
