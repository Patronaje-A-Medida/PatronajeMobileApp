import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/presentation/user_instructions/instructions_model.dart';

class SlideItem extends StatelessWidget{
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(slideList[index].imageUrl),
                  fit: BoxFit.cover
              )),
        ),
        SizedBox(height: 40,),
        Text(
          slideList[index].title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}