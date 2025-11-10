// Openapi Generator last run: : 2025-11-10T21:21:32.622888
import 'package:flutter/material.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:seek_backend/seek_backend.dart';

void main() {
  runApp(const MyApp());
}

@Openapi(
  additionalProperties: DioProperties(
    pubName: "seek_backend",
  ),
  inputSpec: InputSpec(path: "./swagger.yaml"),
  cachePath:"./cache/swagger.yaml",
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: "api/seek-backend",
)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SeekBackend api = SeekBackend();
    api.getAuthApi().authControllerLogin().then((value) {
      print(value);
    });


    return MaterialApp(
      title: 'Seek',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
