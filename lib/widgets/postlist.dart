import 'package:flutter/material.dart';
import 'package:post/models/post_model.dart';
import 'package:post/widgets/iconwidget.dart';

class Postlist extends StatelessWidget {
  final Productfromapi posts;
  const Postlist({
    super.key, required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         //Text('John Doe',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
        Divider(thickness: 2,color: Colors.grey.shade700,),
        Column(
          children: [ 
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.people,size: 30,color: Colors.white,),
                //CircleAvatar(radius: 30,),
                const SizedBox(width: 4,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(posts.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      Text( maxLines: 4, posts.body,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                    
                    
                    ],
                  ),
                ),
              ],),
              const SizedBox(height: 20,),
              
          ],
        ),
    
      //  Divider(thickness: 2,color: Colors.grey.shade700)
      ],
    );
  }
}

