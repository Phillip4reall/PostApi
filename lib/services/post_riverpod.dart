// lib/providers/post_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:post/models/comments_model.dart';
import 'package:post/models/post_model.dart';
import 'package:post/services/comments_riverpod.dart';
import 'package:post/services/post_services.dart';


final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

final postsProvider = FutureProvider<List<Productfromapi>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchProducts();
});

final apiServiceProviders = Provider<Apicomments>((ref) => Apicomments());
final commentsProvider = FutureProvider.family<List<CommentModel>, int>((ref, postId) {
  final apiServices = ref.read(apiServiceProviders);
  return apiServices.fetchCommentsByPost(postId);
});