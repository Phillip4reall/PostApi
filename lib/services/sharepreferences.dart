// lib/services/post_local_storage.dart
import 'dart:convert';

import 'package:post/models/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostLocalStorage {
  static const _key = 'posts';

  Future<void> savePosts(List<Productfromapi> posts) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = posts.map((post) => jsonEncode(post.toJson())).toList();
    await prefs.setStringList(_key, jsonList);
  }

  Future<List<Productfromapi>> loadPosts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getStringList(_key) ?? [];
    return jsonList.map((json) => Productfromapi.fromJson(jsonDecode(json))).toList();
  }
}
