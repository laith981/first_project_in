import 'package:flutter/material.dart';
import 'package:flutter_task_1/Widgets/news_item.dart';

class news_item_card extends StatelessWidget {
  const news_item_card({super.key,required this.item});
  final news_item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: MediaQuery.of(context).size.height*0.35,
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.35,
            height: MediaQuery.of(context).size.width*0.35,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Image.network(item.image,            
            width: double.infinity,
            fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.titel,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54

                ),
                ),        
                SizedBox(height: 20,),
                  Text(item.category,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w500

                ),
                ) ,
                 SizedBox(height: 20,),
                 Spacer(),

                Row(
                  
                  children: [
                    CircleAvatar(
                      child: Image.network(item.onerIameg),
                      radius: 10,
                      ),
                    SizedBox(width: 10,),
                    Text(item.onerName),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 10,),
                    Text(item.createdAt)


                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}