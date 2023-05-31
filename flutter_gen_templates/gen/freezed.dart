import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/data/api/input/{{ name_lower }}.freezed.dart';
part '../../../generated/data/api/input/{{ name_lower }}.g.dart';

@Freezed(equal: false)
class {{ name }}Input with _${{ name }}Input {
  const factory {{ name }}Input({
    {% for p in properties %}
    required {{ p.type_name }} {{ p.name }};
    {% endfor %}
  }) = _{{ name }}Input;

  factory {{ name }}Input.fromJson(Map<String, dynamic> json) => _${{ name }}InputFromJson(json);
}

