import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PictureService {
  final Dio _dio = Dio();

  Future<List<dynamic>> getPictures(int page, int limit) async {
    try {
      final response = await _dio.get('https://picsum.photos/v2/list',
          queryParameters: {'page': page, 'limit': limit});
      return response.data;
    } catch (e) {
      Get.snackbar('Gagal', e.toString());
      throw Exception('Gagal mengambil foto: $e');
    }
  }
}
