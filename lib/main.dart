import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/chat/data/models/message.dart';
import 'features/chat/view/blocs/chat_bloc.dart';
import 'features/chat/view/pages/chat_page.dart';
import 'core/services/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MessageAdapter());
  await Hive.openBox<Message>('messages');
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc()..add(const ChatEvent.fetchChat()),
      child: MaterialApp(
        title: 'Chat App',
        home: const ChatPage(),
      ),
    );
  }
}
