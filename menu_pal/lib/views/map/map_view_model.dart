import '../../app/blueprints/base_viewmodel.dart';
import '../../app/app_defaults.dart';

class MapViewModel extends BaseViewModel {
  // late CameraPosition initialCameraPosition;

  @override
  void disposeModel() {}
  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartDuration);
    // initialCameraPosition = const CameraPosition(
    //   target: LatLng(37.42796133580664, -122.085749655962),
    //   zoom: 14.4746,
    // );
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() {
    throw UnimplementedError();
  }
}
