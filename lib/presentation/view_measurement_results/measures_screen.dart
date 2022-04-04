import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/presentation/view_measurement_results/measure_item.dart';
import 'package:patronaje_mobile_app/presentation/view_measurement_results/measures_list.dart';
import 'package:patronaje_mobile_app/presentation/user_take_photos/user_take_photos.dart';
import 'package:patronaje_mobile_app/presentation/profile/user_profile.dart';

class UserMeasures extends StatefulWidget {
  UserMeasures({Key? key}) : super(key: key);

  @override
  State<UserMeasures> createState() => _UserMeasuresState();
}

class _UserMeasuresState extends State<UserMeasures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Hola\nGeraldine',
              style: TextStyle(
                fontSize: 30,
              ),),
            ),
            ListTile(
              title: Row(
                  children: <Widget>[
                      ClipOval(
                        child: Image.asset('assets/images/profile-icon.jpg',height: 40,width: 40,),
                      ),
                      SizedBox(width: 10,),
                      Text('Mi Perfil')
                  ],),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => UserProfile())
                );
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset('assets/images/person-measures.png',height: 40,width: 40,),
                  ),
                  Text('Historial de Medidas')
                ],),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => UserMeasures())
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text(
                '    Resultado de las\n    medidas corporales',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),)
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/measures.PNG',
                height: 250,
                fit: BoxFit.cover
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('     Medidas en metros')
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(measuresList[14].measure_name),
                  Image.asset(
                      'assets/images/1.png',
                      height: 30,
                  ),
                  SizedBox(height: 10,),
                  Text(measuresList[14].measure)
                ],
              ),
              SizedBox(width: 40,),
              Column(
                children: <Widget>[
                  Text(measuresList[0].measure_name),
                  Image.asset(
                    'assets/images/2.png',
                    height: 30,
                  ),
                  SizedBox(height: 10,),
                  Text(measuresList[0].measure)
              ],),
              SizedBox(width: 40,),
              Column(
                children: <Widget>[
                  Text(measuresList[3].measure_name),
                  Image.asset(
                    'assets/images/3.png',
                    height: 30,
                  ),
                  SizedBox(height: 10,),
                  Text(measuresList[3].measure)
                ],
              ),
              SizedBox(width: 40,),
              Column(
                children: <Widget>[
                  Text(measuresList[5].measure_name),
                  Image.asset(
                    'assets/images/4.png',
                    height: 30,
                  ),
                  SizedBox(height: 10,),
                  Text(measuresList[5].measure)
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height:200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    scrollDirection: Axis.vertical,
                    itemCount: measuresList.length,
                    itemBuilder: (ctx, i) => MeasureItem(i),
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
              ),
            ],
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => TakePhotos())
                  );
                },
                child: const Text('Volver'),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(5),
                  backgroundColor: Colors.deepPurple,
                  primary: Colors.white,
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}
