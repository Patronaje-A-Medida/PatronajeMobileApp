import 'package:flutter/material.dart';

import 'package:patronaje_mobile_app/presentation/profile/user.dart';
import 'package:patronaje_mobile_app/presentation/view_measurement_results/measures_list.dart';
import 'package:patronaje_mobile_app/presentation/view_measurement_results/measures_screen.dart';

class UserProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Row(
           children: <Widget>[
             IconButton(
                 onPressed: () {
                   Navigator.of(context).push(
                       MaterialPageRoute(
                           builder: (context) => UserMeasures())
                   );
                 },
                 icon: Image.asset('assets/images/arrow.png', width: 20, height: 20,)
             ),
             Text(
               'Mi perfil',
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
          ),
          SizedBox(height: 20,),
          ClipOval(
            child: Image.asset(
              'assets/images/profile-icon.jpg',
              width: 200,
              height: 200,),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: (){},
                child: const Text('Editar'),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Nombre',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 16,),
                  Text(
                      userList[0].name,
                  ),
                  SizedBox(height: 16,),
                  Text('Apellido',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 16,),
                  Text(
                    userList[0].surname,
                  ),
                  SizedBox(height: 16,),
                  Text('Telefono',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 16,),
                  Text(
                    userList[0].phone_number,
                  ),
                  SizedBox(height: 16,),
                  Text('Estatura',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 16,),
                  Text(
                    measuresList[14].measure,
                  ),
                  SizedBox(height: 16,),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
