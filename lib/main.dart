import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/chat/data/models/message.dart';
import 'features/chat/view/blocs/chat_bloc.dart';
import 'features/chat/view/pages/chat_page.dart';
import 'core/services/app_bloc_observer.dart';
import 'dart:isolate';
import 'dart:convert';
import 'dart:io';
import 'package:math_expressions/math_expressions.dart';
void main() async {
  sumList([1, 2, 3, 4, 5]);
  reverseString("Flutter");
  fibonacci(80);
  squareList([1, 2, 3,4,5]);
  uniqueList([1, 2, 3, 3, 4,4,5,6,6,7]);
  countWords("Man flutter yonalishda oqiyman flutter");
  extractNumbers("Gulnoza170403 salom170403");
  evaluateExpression("40 + 55 * 3");
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Hive.registerAdapter(MessageAdapter());
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

void encodeImageBase64(String imagePath) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_imageToBase64, [receivePort.sendPort, imagePath]);
  final result = await receivePort.first;
  print('Base64: $result');
}

void _imageToBase64(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final imagePath = args[1] as String;
  final bytes = File(imagePath).readAsBytesSync();
  final base64 = base64Encode(bytes);
  sendPort.send(base64);
}

void sumList(List<int> list) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_sumList, [receivePort.sendPort, list]);
  final result = await receivePort.first;
  print('Yigindisi: $result');
}

void _sumList(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final list = args[1] as List<int>;
  final sum = list.reduce((a, b) => a + b);
  sendPort.send(sum);
}
void heavySum() async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_bigSum, receivePort.sendPort);
  final result = await receivePort.first;
  print('Katta summa: $result');
}

void _bigSum(SendPort sendPort) {
  int sum = 0;
  for (int i = 1; i <= 100000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}
void reverseString(String input) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_reverseString, [receivePort.sendPort, input]);
  final result = await receivePort.first;
  print('Teskari: $result');
}

void _reverseString(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final input = args[1] as String;
  final reversed = input.split('').reversed.join();
  sendPort.send(reversed);
}

void fibonacci(int n) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_fibonacci, [receivePort.sendPort, n]);
  final result = await receivePort.first;
  print('Fibonachchi: $result');
}

void _fibonacci(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final n = args[1] as int;

  int fib(int x) {
    if (x <= 1) return x;
    return fib(x - 1) + fib(x - 2);
  }

  sendPort.send(fib(n));
}

void squareList(List<int> list) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_squareList, [receivePort.sendPort, list]);
  final result = await receivePort.first;
  print('Kvadirati: $result');
}

void _squareList(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final list = args[1] as List<int>;
  final result = list.map((e) => e * e).toList();
  sendPort.send(result);
}

void uniqueList(List<int> list) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_uniqueList, [receivePort.sendPort, list]);
  final result = await receivePort.first;
  print('Takrorlangan sonlarsiz: $result');
}

void _uniqueList(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final list = args[1] as List<int>;
  final result = list.toSet().toList();
  sendPort.send(result);
}

void countWords(String text) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_countWords, [receivePort.sendPort, text]);
  final result = await receivePort.first;
  print('Sozlar soni: $result');
}

void _countWords(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final text = args[1] as String;
  final words = text.toLowerCase().split(' ');
  final Map<String, int> countMap = {};
  for (var word in words) {
    countMap[word] = (countMap[word] ?? 0) + 1;
  }
  sendPort.send(countMap);
}
void extractNumbers(String text) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_extractNumbers, [receivePort.sendPort, text]);
  final result = await receivePort.first;
  print('Raqamlar: $result');
}

void _extractNumbers(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final text = args[1] as String;
  final matches = RegExp(r'\\d+').allMatches(text);
  final numbers = matches.map((m) => int.parse(m.group(0)!)).toList();
  sendPort.send(numbers);
}

void evaluateExpression(String expr) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_evaluateExpression, [receivePort.sendPort, expr]);
  final result = await receivePort.first;
  print('Natija: $result');
}

void _evaluateExpression(List<dynamic> args){
  final sendPort = args[0] as SendPort;
  final expr = args[1] as String;
  final parser = Parser();
  final exp = parser.parse(expr);
  final contextModel = ContextModel();
  final result = exp.evaluate(EvaluationType.REAL, contextModel);
  sendPort.send(result);
}
