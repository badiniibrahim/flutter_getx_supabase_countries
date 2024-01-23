import 'package:flutter/material.dart';
import 'package:flutter_getx_supabase_countries/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Supabase countries"),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.countries.length,
                itemBuilder: (context, index) {
                  final country = controller.countries[index];
                  return ListTile(
                    title: Text(country['name']),
                  );
                },
              ),
      ),
    );
  }
}
