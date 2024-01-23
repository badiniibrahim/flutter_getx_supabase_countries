import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxList<Map<String, dynamic>> countries = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response =
          await Supabase.instance.client.from('countries').select();
      countries.assignAll(response);
    } catch (error) {
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }
}
