import '../../app/blueprints/base_viewmodel.dart';
import '../../app/app_defaults.dart';

class RegisterViewModel extends BaseViewModel {
  @override
  void disposeModel() {}
  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartDuration);
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() {
    throw UnimplementedError();
  }
}
