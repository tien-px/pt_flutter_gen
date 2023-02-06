/// DO NOT EDIT. This is code generated via flutter_gen

import 'package:get/get.dart';
import 'package:{{ package_name }}/scenes/app/app_pages.dart';
{% for file in import_files %}
import '{{ file }}';
{% endfor %}

abstract class AppRouter {
  {% for item in items %}
  {% if item.is_include_args %}
  Future? to{{ item.class_name }}({{ item.class_name }}Args args, {int? id});
  Future? offAll{{ item.class_name }}({{ item.class_name }}Args args, {int? id});
  Future? offAndTo{{ item.class_name }}({{ item.class_name }}Args args, {int? id});
  Future? off{{ item.class_name }}({{ item.class_name }}Args args, {int? id});
  Future? offUntil{{ item.class_name }}({{ item.class_name }}Args args, {int? id});
  {% else %}
  Future? to{{ item.class_name }}({int? id});
  Future? offAll{{ item.class_name }}({int? id});
  Future? offAndTo{{ item.class_name }}({int? id});
  Future? off{{ item.class_name }}({int? id});
  Future? offUntil{{ item.class_name }}({int? id});
  {% endif %}
  {% endfor %}
}

class AppRouterImpl implements AppRouter {
  void back({int? id}) {
    Get.back(id: id);
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
