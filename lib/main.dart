import 'package:chat_app/core/services/app_bloc_observer.dart';
import 'package:chat_app/features/chat/view/pages/chat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/io.dart';

import 'features/chat/view/blocs/chat_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(MessageModelAdapter());
  await Hive.openBox<MessageModel>('messages');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc()..add(ChatEvent.fetchChat()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ChatPage(),
      ),
    );
  }
}


// class MainApp  extends StatefulWidget {
//   const MainApp ({super.key});
//
//   @override
//   State<MainApp> createState() => _MainAppState();
// }
//
// class _MainAppState extends State<MainApp > {
//   @override
//   Widget build(BuildContext context) {
//     IOWebSocketChannel channel= IOWebSocketChannel.connect(Uri.persa(""))
//   });
//
// }
