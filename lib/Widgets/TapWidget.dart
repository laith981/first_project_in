import 'package:flutter/material.dart';
class TapWidget extends StatelessWidget {
  const TapWidget({
    super.key,
    required this.taitel,
    required this.onTap,
    this.isActiv=false
  });
  final String taitel;
  final bool isActiv;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:isActiv? Colors.blue:Colors.grey,
                  ),
                  child: Text(taitel,
                  style: TextStyle(
                    color: isActiv?Colors.white:Colors.black
                  ),
                  ),
                );
  }
}