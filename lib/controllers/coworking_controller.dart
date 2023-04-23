import 'package:get/state_manager.dart';
import 'package:coworking_space_app/models/call_api.dart';
import 'package:coworking_space_app/services/remote_service.dart';

class CoworkingController extends GetxController {
  var cowork_list = <Coworking>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchCoworks();
    super.onInit();
  }

  void fetchCoworks() async {
    try {
      isLoading(true);
      var cowork = await RemoteServices.fetchCoworking();
      if (cowork != null) {
        cowork_list.value = cowork;
      }
    } finally {
      isLoading(false);
    }
  }
}
