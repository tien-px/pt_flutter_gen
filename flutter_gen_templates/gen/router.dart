// DO NOT EDIT. This is code generated via flutter_gen

import 'package:pt_flutter_architecture/pt_flutter_architecture.dart';
import 'package:{{ package_name }}/scenes/app/app_pages.dart';
{% for file in import_files %}
import '{{ file }}';
{% endfor %}

class AppRouter {
  void back({int? id}) {
    return Get.back(id: id);
  }

  void backToRoot({int? id}) {
    Get.until((route) => route.isFirst, id: id);
  }

  {% for item in items %}
  {% if item.is_include_args %}
  Future? to{{ item.class_name }}({{ item.class_name }}Args args, {int? id}) {
    return Get.toNamed(Routes.{{ item.route_name }}, arguments: args, id: id);
  }

  Future? offAll{{ item.class_name }}({{ item.class_name }}Args args, {int? id}) {
    return Get.offAllNamed(Routes.{{ item.route_name }}, arguments: args, id: id);
  }

  Future? offAndTo{{ item.class_name }}({{ item.class_name }}Args args, {int? id}) {
    return Get.offAndToNamed(Routes.{{ item.route_name }}, arguments: args, id: id);
  }

  Future? off{{ item.class_name }}({{ item.class_name }}Args args, {int? id}) {
    return Get.offNamed(Routes.{{ item.route_name }}, arguments: args, id: id);
  }

  Future? offUntil{{ item.class_name }}({{ item.class_name }}Args args, {int? id}) {
    return Get.offNamedUntil(Routes.{{ item.route_name }}, (_) => false, arguments: args, id: id);
  }

  {% else %}
  Future? to{{ item.class_name }}({int? id}) {
    return Get.toNamed(Routes.{{ item.route_name }}, id: id);
  }

  Future? offAll{{ item.class_name }}({int? id}) {
    return Get.offAllNamed(Routes.{{ item.route_name }}, id: id);
  }

  Future? offAndTo{{ item.class_name }}({int? id}) {
    return Get.offAndToNamed(Routes.{{ item.route_name }}, id: id);
  }

  Future? off{{ item.class_name }}({int? id}) {
    return Get.offNamed(Routes.{{ item.route_name }}, id: id);
  }

  Future? offUntil{{ item.class_name }}({int? id}) {
    return Get.offNamedUntil(Routes.{{ item.route_name }}, (_) => false, id: id);
  }

  {% endif %}
  {% endfor %}
}
