// lib/services/api_service.dart
import 'package:dio/dio.dart';
import 'package:post/models/comments_model.dart';

class Apicomments {
  final Dio _dio = Dio();

  Future<List<CommentModel>> fetchCommentsByPost(int postId) async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/posts/$postId/comments',
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((item) => CommentModel.fromJson(item)).toList();
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Exception: $e');
    }
  }
}
