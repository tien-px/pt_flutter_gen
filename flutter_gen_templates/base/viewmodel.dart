import 'package:{{ package_name }}/generated/generated.dart'; // ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:{{ package_name }}/core/architecture/mobx_viewmodel.dart';

part '{{ name_lower }}_viewmodel.g.dart';

class {{ name }}ViewModel = _{{ name }}ViewModel with _${{ name }}ViewModel;

abstract class _{{ name }}ViewModel extends MobXViewModel<AppRepository, AppRouter> with Store {
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
