import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:post/models/post_model.dart';
import 'package:post/screen/user_comments.dart';
import 'package:post/services/post_riverpod.dart';
import 'package:post/services/pref_riverpod.dart';
import 'package:post/widgets/iconwidget.dart';
import 'package:post/widgets/postlist.dart';

class UserPost extends ConsumerWidget {
 const UserPost({super.key});

//  List<Productfromapi> posts = [];
  @override

  
  Widget build(BuildContext context, WidgetRef ref) {
    final posts= ref.watch(postsProvider);
    // final hello = ref.watch(postProviders.notifier);
   // final len= hello.length;
    return Scaffold(
      appBar: AppBar( centerTitle: true, backgroundColor: Colors.black,title:  Text('User Posts',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
      backgroundColor: Colors.black,
      body:posts.when(
        data: (posts) => ListView.builder(
          itemCount: posts.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index){
          final post =posts[index];
          return InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (contex)=>UserpostComments(postId: post.id)));
          },
            child: Column(
              children: [
                Postlist(posts: post,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Iconwidget(ontap: (){},icon: Icons.comment,text: '',),
                  //Iconwidget(ontap: (){},icon: Icons.favorite,text: '',),
                  Iconwidget(ontap: (){
                    ref.read(postProviders.notifier).addPost(
              Productfromapi(
                id : post.id,
                body: post.body,
                title: post.title,
              ),
            ); 
                  },icon: Icons.bookmark,text: '',),
                
                ],
              ),
              ],
            ));
        },
        ),
        loading: () => const Center(child: CircularProgressIndicator(color: Colors.white,)),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
      
      
      
