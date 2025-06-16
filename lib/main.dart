// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'features/chat/data/models/message.dart';
// import 'features/chat/view/blocs/chat_bloc.dart';
// import 'features/chat/view/pages/chat_page.dart';
// import 'core/services/app_bloc_observer.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
//   Hive.registerAdapter(MessageAdapter());
//   await Hive.openBox<Message>('messages');
//   Bloc.observer = AppBlocObserver();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ChatBloc()..add(const ChatEvent.fetchChat()),
//       child: MaterialApp(
//         title: 'Chat App',
//         home: const ChatPage(),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:upload_file/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("File uplaod"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(file != null)Image.file(file!),
            SizedBox(height: 12),
            CircularProgressIndicator(),
            SizedBox(height: 12),
            ElevatedButton(onPressed: _pickImage, child: Text("rasm tanlash")),
            ElevatedButton(onPressed: (){
              if(file == null)return;
              _sendFileToFirebase();
            }, child: Text("rasm yuborish")),
          ],
        ),
      ),
    );
  }

  ///firebase_storage -> packet nomi shu packet bilan ishlaydi
  _sendFileToFirebase() async {
    print("loading");
    final storageRef = FirebaseStorage.instance.ref().
    child("applications/${(file?.path ?? "").split("/").last}");
    final putFileTask = await storageRef.putFile(file!);
    print(await putFileTask.ref.getDownloadURL());
  }










  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickImage = await picker.pickImage(source: ImageSource.gallery);
    if(pickImage == null)return;
    file = File(pickImage.path);
    setState(()=>());
  }

  // Future<void> _base64() async {
  //   final picker = ImagePicker();
  //   final pickImage = await picker.pickImage(source: ImageSource.gallery);
  //   if(pickImage == null)return;
  //   file = File(pickImage.path);
  //   final bytes = await file!.readAsBytes();
  //   final base64enCode = base64Encode(bytes);
  //   log(base64enCode);
  // }

  _sendFileHttp(File currentFile) async {
    print("loading");
    final _url = Uri.parse("https://api.escuelajs.co/api/v1/files/upload");
    final request = http.MultipartRequest("POST", _url);
    request.files.add(
      await http.MultipartFile.fromPath(
          "file",
          currentFile.path,
          filename: basename(currentFile.path)
      ),
    );

    request.headers["Content-Type"] = "multipart/form-data";
    request.fields["name"] = "Alisher";
    request.fields["age"] = "20";
    request.fields["isMarried"] = "false";

    final response = await request.send();
    print(response.statusCode);
    String text = "";
    text = (await http.Response.fromStream(response)).body;
    // await for(final item in response.stream){
    //   text += Utf8Decoder().convert(item).toString();
    // }
    print(text);
  }

  _sendFileDio(File currentFile) async {
    print("loading");
    final url = "https://api.escuelajs.co/api/v1/files/upload";
    final fileName = basename(currentFile.path);
    FormData formData = FormData.fromMap({
      "file" : await MultipartFile.fromFile(currentFile.path, filename: fileName),
      "age" : 20,
      "name" : "Alisher",
      "isMarried" : false
    });

    final request = await Dio().post(url, options: Options(
      headers: {
        "Content-Type" : "multipart/form-data"
      },
    ),
      data: formData,
      onSendProgress: (sent, total) {
        final progress = (sent / total * 100).toStringAsFixed(2);
        print('Upload Progress: $progress%');
      },
    );
    print(request.data);
  }
}
