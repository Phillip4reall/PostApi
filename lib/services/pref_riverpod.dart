// lib/providers/post_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:post/models/post_model.dart';
import 'package:post/services/sharepreferences.dart';

class PostNotifier extends Notifier<List<Productfromapi>> {
  final _storage = PostLocalStorage();

  @override
  List<Productfromapi> build() {
    _load();
    return [];
  }

  Future<void> _load() async {
    final posts = await _storage.loadPosts();
    state = posts;
  }

  Future<void> addPost(Productfromapi post) async {
    final updated = [...state, post];
    state = updated;
    await _storage.savePosts(updated);
  }

  Future<void> clearPosts() async {
    state = [];
    await _storage.savePosts([]);
  }

  Future<void> deletePost(int index) async {
    final updated = [...state]..removeAt(index);
    state = updated;
    await _storage.savePosts(updated);
  }
}

final postProviders = NotifierProvider<PostNotifier, List<Productfromapi>>(PostNotifier.new);
