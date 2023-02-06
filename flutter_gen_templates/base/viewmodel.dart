import 'package:{{ package_name }}/generated/r.g.dart'; // ignore: unused_import
import 'package:{{ package_name }}/generated/app_repository.g.dart'; // ignore: unused_import
import 'package:{{ package_name }}/generated/app_router.g.dart'; // ignore: unused_import
import 'package:mobx/mobx.dart'; // ignore: unused_import
import 'package:{{ package_name }}/core/architecture/mobx_viewmodel.dart';
import 'package:get/get.dart' hide navigator; // ignore: unused_import

part '../../generated/scenes/{{ name_lower }}/{{ name_lower }}_viewmodel.g.dart';

class {{ name }}ViewModel = _{{ name }}ViewModel with _${{ name }}ViewModel;

abstract class _{{ name }}ViewModel extends MobXViewModel<AppRepository, AppRouter> with Store {
  ///* VARIABLE *///
  ///* STATE *///
  ///* COMPUTED *///
  ///* LIFE CYCLE *///
  @override
  void onInit() async {
    super.onInit();
  }

  ///* VIEW INPUT ACTION *///
}

extension {{ name }}ViewMethods on _{{ name }}ViewModel {}
