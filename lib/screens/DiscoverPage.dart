import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_task_1/Widgets/TapWidget.dart';
import 'package:flutter_task_1/Widgets/news_item.dart';
import 'package:flutter_task_1/Widgets/news_item_card.dart';
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
     List<String> titel=[ 
     "Sport",
     "Politic" ,
     "Education",
     "game"
     ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle
            ),
            child: IconButton(
              icon: Icon( Icons.navigate_before),
              onPressed:(){
                Navigator.of(context).pop();
              } ,
            ),
          ),
        ),
      ),  
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: 10,),
            Text("Discover",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
            ),
            SizedBox(height: 10,),
            Text("News from all the world",
            style: TextStyle(
              color:Colors.black54,
              fontSize: 12, 
            ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Row(
                children:[
                  Icon( 
                  Icons.search,
                  color: Colors.grey[400],
                  ),
                  SizedBox(width: 8,),
                  Text(
                    "search",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    ),
                  Spacer(),
                  Image(image: AssetImage(
                    "assets/images/sliders.png"
                    )
                    )
                ] 
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  TapWidget(taitel: "All",onTap: (){},isActiv: true,),
                  ...List.generate(titel.length, (index) => TapWidget(taitel: titel[index],onTap: (){},)),
                  ...List.generate(titel.length, (index) => TapWidget(taitel: titel[index],onTap: (){},)),
                  ...List.generate(titel.length, (index) => TapWidget(taitel: titel[index],onTap: (){},)),
                  ...List.generate(titel.length, (index) => TapWidget(taitel: titel[index],onTap: (){},)),
                ],
                
              ) ,
              ), 
              SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                                
                  children: [
                   news_item_card(item:  news_item(
                      image: "https://usports.ca/uploads/cis/Championships/MVB/2022-23/Jordan_Canham2.png", 
                      category: "what Traning Do Volleyball Players Need ",
                      titel: "sport",
                      onerName: "laith",
                      onerIameg: "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg",
                      createdAt: "feb 27 2023"
                          )), 
                          SizedBox(height: 20,),
                          news_item_card(item:  news_item(
                      image: "https://usports.ca/uploads/cis/Championships/MVB/2022-23/Jordan_Canham2.png", 
                      category: "what Traning Do Volleyball Players Need ",
                      titel: "sport",
                      onerName: "laith",
                      onerIameg: "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg",
                      createdAt: "feb 27 2023"
                          )), 
                         SizedBox(height: 20,),
                         news_item_card(item:  news_item(
                      image: "https://usports.ca/uploads/cis/Championships/MVB/2022-23/Jordan_Canham2.png", 
                      category: "what Traning Do Volleyball Players Need ",
                      titel: "sport",
                      onerName: "laith",
                      onerIameg: "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg",
                      createdAt: "feb 27 2023"
                          )),
                           SizedBox(height: 20,),
                          news_item_card(item:  news_item(
                      image: "https://usports.ca/uploads/cis/Championships/MVB/2022-23/Jordan_Canham2.png", 
                      category: "what Traning Do Volleyball Players Need ",
                      titel: "sport",
                      onerName: "laith",
                      onerIameg: "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg",
                      createdAt: "feb 27 2023"
                          )),
                           SizedBox(height: 20,),
                          news_item_card(item:  news_item(
                      image: "https://usports.ca/uploads/cis/Championships/MVB/2022-23/Jordan_Canham2.png", 
                      category: "what Traning Do Volleyball Players Need ",
                      titel: "sport",
                      onerName: "laith",
                      onerIameg: "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg",
                      createdAt: "feb 27 2023"
                          ))
                  ]
            
                    
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
//Expanded