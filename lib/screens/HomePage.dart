import 'package:flutter/material.dart';
import 'package:flutter_task_1/screens/DiscoverPage.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading:Icon(
           Icons.menu
           ) ,
           title: Center(
             child: Text("my first App",
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
              
             ),           
             ),
           ),
        

      ),
      body:Padding(
        padding: EdgeInsets.all(26),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                icon: Icon(Icons.navigate_next_sharp),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DiscoverPage()));
                },
              
             ),
          ),
        ),
      ),
    );
  }
}
