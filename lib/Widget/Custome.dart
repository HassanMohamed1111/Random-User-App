import 'package:flutter/material.dart';

class CustomeWidget extends StatelessWidget {
final String urlImage;
final String title;
final String first;
final String last;
CustomeWidget({required this.urlImage , required this.first , required this.last , required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Row(
                children: [
                  CircleAvatar(child: Image.network(urlImage) , 
                  radius: 50,
                  ),
                  SizedBox(width: 10,),
                  Text(title , 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(width: 15,),
                  Text(first),
                  SizedBox(width: 15,),
                  Text(last),
                ],
              ),
            ],
          );
  }
}