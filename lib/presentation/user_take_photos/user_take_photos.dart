import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:patronaje_mobile_app/presentation/user_take_photos/camera_page.dart';
import 'package:patronaje_mobile_app/presentation/user_instructions/instructions_screen.dart';
import 'package:patronaje_mobile_app/presentation/view_measurement_results/measures_screen.dart';
import 'package:patronaje_mobile_app/presentation/profile/user_profile.dart';

class TakePhotos extends StatelessWidget {
  TakePhotos({Key? key}) : super(key: key);

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
      body:Column(
        children:<Widget>[
          SizedBox(height: 25,),
          Row(children: <Widget>[
            Text(
              '  Tomar medidas corporales',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),)
          ],),
          SizedBox(height: 40,),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Image.asset('assets/images/1.png',width: 30, height: 30,),
                  SizedBox(width: 10,),
                  Column(children: <Widget>[
                    Text(
                    'Foto Frontal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                  ],),
                  SizedBox(width: 120,),
                  IconButton(
                      onPressed: () => showDialog<String>
                        (context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text ('Recuerda imitar la imagen'),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                    'assets/images/frontal.jpeg',
                                    height: 400,
                                    fit: BoxFit.cover
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              TextButton(onPressed: () => Navigator.pop(context, 'Continuar')
                                  , child: const Text('Continuar')
                              ),
                            ],
                          )),
                      icon:Image.asset('assets/images/lamp.jpg', width: 30, height: 30,)),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 50,),
                  Column(children: <Widget>[Text(
                    'Con brazos y piernas abiertas',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                  ],)
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      onPressed: () async{
                          await availableCameras().then(
                          (value) => Navigator.push(context,
                          MaterialPageRoute(
                          builder: (context) => CameraPage(cameras:value),),),);
                        },
                      icon: Image.asset('assets/images/camara.jpg'),
                      iconSize: 50
                  )
                ],
              ),
              SizedBox(height: 60,),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    SizedBox(width: 10,),
                    Image.asset('assets/images/2.png',width: 30, height: 30,),
                    SizedBox(width: 10,),
                    Text(
                      'Foto Lateral',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 120,),
                    IconButton(onPressed: () => showDialog<String>
                      (context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text ('Recuerda imitar la imagen'),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                  'assets/images/perfil.jpeg',
                                  height: 400,
                                  fit: BoxFit.cover
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(onPressed: () => Navigator.pop(context, 'Continuar'),
                                child: Text('Continuar')
                            ),
                          ],
                        )),
                        icon: Image.asset('assets/images/lamp.jpg',height: 50, width: 50,)),
                  ],)
                ],
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    SizedBox(width: 50,),
                    Text(
                    'Con brazos pegados al cuerpo \ny piernas juntas',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                  ],)
                ],
              ),
              SizedBox(height: 15,),
              IconButton(
                  onPressed: ()
                  async{
                    await availableCameras().then(
                          (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CameraPage(cameras:value),),),);
                  },
                  icon: Image.asset('assets/images/camara.jpg'),
                  iconSize: 50
              ),
              SizedBox(height: 150,),
              TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Instructions())
                  );
                },
                child: const Text('Volver'),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(15),
                  backgroundColor: Colors.deepPurple,
                  primary: Colors.white,
                ),
              ),
            ],)
        ],
      ),
    );
  }
}

