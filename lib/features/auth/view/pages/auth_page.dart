import 'package:chat_app/core/extensions/num_extensions.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: textEditingController,
              ),
              12.height,
              ElevatedButton(
                onPressed: (){},
                child: Text("login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
