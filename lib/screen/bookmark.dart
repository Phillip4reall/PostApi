// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:post/services/pref_riverpod.dart';

class Bookmark extends ConsumerWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postProviders);

    return 
       Scaffold(
         backgroundColor: Colors.black,
        appBar: AppBar(title: const Text('Bookmarks',),centerTitle: true,),
        body: posts.isEmpty ? Center(child: Text('No data bookmark',style: TextStyle(color: Colors.white),),) :ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return Dismissible(
               key: Key(post.title + index.toString()), // unique key
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                ref.read(postProviders.notifier).deletePost(index);

                ScaffoldMessenger.of(context).showSnackBar(
                  
                  SnackBar( backgroundColor: Colors.teal,content: Text('${post.title} deleted')),
                );
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: Card(
                color: Colors.grey.shade200,
                child: ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                ),
              ),
            );
          },
        ),

      
    );
  }
}
