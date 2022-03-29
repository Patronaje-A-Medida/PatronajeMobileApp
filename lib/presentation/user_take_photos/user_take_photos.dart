import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:patronaje_mobile_app/presentation/user_take_photos/camera_page.dart';
import 'package:patronaje_mobile_app/presentation/user_instructions/instructions_screen.dart';

class TakePhotos extends StatelessWidget {
  TakePhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body:Column(
        children:<Widget>[
          Column(children: <Widget>[
            Text(
              'Tomar medidas corporales',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),)
          ],),
          SizedBox(height: 40,),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[Text(
                    'Foto Frontal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                  ],)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[Text(
                    'Con brazos y piernas abiertas',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                  ],)
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                              TextButton(onPressed: () => Navigator.pop(context, 'Cancelar')
                                  , child: const Text('Cancelar')
                              ),
                              TextButton(onPressed: ()
                              async{
                                await availableCameras().then(
                                      (value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CameraPage(cameras:value),),),);
                              },
                                child: const Text('Tomar Foto'),
                              ),
                            ],
                          )),
                      icon: Image.asset('assets/images/camara.jpg'),
                      iconSize: 100
                  )
                ],
              ),
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text(
                      'Foto Lateral',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],)
                ],
              ),SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[Text(
                    'Con brazos pegados al cuerpo y piernas juntas',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                  ],)
                ],
              ),
              SizedBox(height: 40,),
              IconButton(
                  onPressed: () => showDialog<String>
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
                          TextButton(onPressed: () => Navigator.pop(context, 'Cancelar'),
                              child: Text('Cancelar')
                          ),
                          TextButton(onPressed: ()
                          async{
                            await availableCameras().then(
                                  (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CameraPage(cameras:value),),),);
                          },
                            child: Text('Tomar Foto'),
                          ),
                        ],
                      )),
                  icon: Image.asset('assets/images/camara.jpg'),
                  iconSize: 100
              ),
              SizedBox(height: 10,),
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

