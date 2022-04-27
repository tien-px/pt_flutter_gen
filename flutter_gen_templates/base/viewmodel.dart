import 'package:{{ package_name }}/core/architecture/mobx_viewmodel.dart';
import 'package:{{ package_name }}/data/repositories/app_repository.dart';
import 'package:{{ package_name }}/generated/router.g.dart';
import 'package:mobx/mobx.dart';

part '{{ name_lower }}_viewmodel.g.dart';

class {{ name }}Args {}

class {{ name }}ViewModel = _{{ name }}ViewModel with _${{ name }}ViewModel;

abstract class _{{ name }}ViewModel extends MobXViewModelWithArgs<AppRepository, AppRouter, {{ name }}Args> with Store {
  /* Variable */
  /* State */
  /* Computed */
  /* Life Cycle */
  @override
  void onInit() async {
    super.onInit();
  }

  /* Input Action */
}

extension {{ name }}ViewMethods on _{{ name }}ViewModel {}
