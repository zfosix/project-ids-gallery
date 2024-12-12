import 'package:ids_flutter/constant/core.dart';

class HomeController extends GetxController {
  final PictureService _pictureService = PictureService();

  final isLoading = false.obs;
  final pictureList = [].obs;

  @override
  void onInit() {
    super.onInit();
    getPictures();
  }

  Future<void> getPictures() async {
    isLoading(true);
    try {
      final data = await _pictureService.getPictures(10, 10);
      pictureList.value = data;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }

  void toDetailPage(Map<String, dynamic> picture) {
    Get.toNamed(AppPages.detailPage, arguments: picture);
  }
}
