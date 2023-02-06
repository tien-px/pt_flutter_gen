import 'package:flutter/material.dart';
import 'package:get/get.dart'; // ignore: unused_import
import 'package:flutter_mobx/flutter_mobx.dart'; // ignore: unused_import
import 'package:{{ package_name }}/core/architecture/mobx_view.dart'; // ignore: unused_import
import 'package:{{ package_name }}/generated/r.g.dart'; // ignore: unused_import

import '{{ name_lower }}_viewmodel.dart';

class {{ name }}Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<{{ name }}ViewModel>({{ name }}ViewModel());
  }
}

class {{ name }}View extends MobXView<{{ name }}ViewModel> {
  const {{ name }}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}