import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:post/services/post_riverpod.dart';

class UserpostComments extends ConsumerWidget {
  int postId;
   UserpostComments({super.key,required this.postId});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final comments = ref.watch(commentsProvider(postId));
    return Scaffold(
       appBar: AppBar( leading:IconButton(onPressed: (){
        Navigator.pop(context);
       }, icon:Icon(Icons.arrow_back_ios,size: 24,color: Colors.white,)),centerTitle: true, backgroundColor: Colors.black,title:  Text('Comments',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
      backgroundColor: Colors.black,
      body:comments.when(
        data: (comments)=> ListView.builder(itemCount: comments.length,
              itemBuilder: (context,index){
                final commets =comments[index];
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(commets.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),), 
                   Text(commets.email,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                   const SizedBox(height: 20,),
                   Center(child: Text( maxLines: 4,commets.body,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),)),
                 //Text('${comments.length}',),
                  //Text('${comments.length}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),), 
                  Divider(thickness: 2,color: Colors.grey.shade700,),
                  ],
                ),
              );
            }),
          
        
        loading: () => const Center(child: CircularProgressIndicator(color: Colors.white,)),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ), 
     
    );
  }
}