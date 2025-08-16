// lib/services/api_service.dart
import 'package:dio/dio.dart';
import 'package:post/models/post_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Productfromapi>> fetchProducts() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/posts',
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data
            .map((item) => Productfromapi.fromJson(item))
            .toList();
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Exception: $e');
    }
  }
}
