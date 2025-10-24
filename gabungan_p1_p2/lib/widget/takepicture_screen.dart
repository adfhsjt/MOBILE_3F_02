import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'filter_carousel.dart'; // Import filter carousel yang sudah diubah

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({super.key, required this.camera});
  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture - 2341720106')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _initializeControllerFuture;
          final image = await _controller.takePicture();
          // Navigasi ke filter carousel, kirim path foto
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PhotoFilterCarousel(imagePath: image.path),
            ),
          );
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}