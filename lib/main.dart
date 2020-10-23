import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votaciones_app/services/socket_service.dart';
import 'package:votaciones_app/src/pages/home.dart';
import 'package:votaciones_app/src/pages/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SocketService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
          'status': (context) => StatusPage(),
        },
      ),
    );
  }
}
