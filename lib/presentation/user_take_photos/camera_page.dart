import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/presentation/user_take_photos/user_take_photos.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras! [0],
      ResolutionPreset.max,
    );
    controller.initialize().then((_){
      if (!mounted){
        return;
      }
      setState(() {});
    });
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized){
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: CameraPreview(controller),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async{
              pictureFile = await controller.takePicture();
              setState(() {});
            },
            child: const Text('Tomar Foto!'),
          ),
        ),
        if (pictureFile != null)
          Image.network(
            pictureFile!.path,
            height: 180,
          ),
        Row(
          children: <Widget>[
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
                    )))
          ],
        ),
      ],
    );
  }
}

