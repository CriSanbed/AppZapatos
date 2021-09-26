import 'package:app_zapatos/User/UI/Screen/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_zapatos/User/Bloc/bloc_user.dart';

void main() async {
  //usando firebase_core
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'App Zapatos Deportivos',
          home: Login(),
          initialRoute: 'main',
          routes: {
            'main': (context) => Login(),
          },
        ),
        bloc: UserBloc());
  }
}
