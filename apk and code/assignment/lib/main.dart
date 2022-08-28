// import 'package:encypt_cache/login/utils/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';

import 'login/screens/splash_screen.dart';
import 'login/utils/globals.dart';
import 'login/utils/route_generator.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMassenger = GlobalKey();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyBYKhOXtbI2kZXl-0R68yCJMQQxfKZuzfY',
    appId: '1:729325964245:android:83e89cdaf556edffb58b5c',
    messagingSenderId: '729325964245',
    projectId: 'tinderlikeapp-d4d7d',
    storageBucket: 'tinderlikeapp-d4d7d.appspot.com',
  ));
  runApp(const _MainApp());
}

class _MainApp extends StatelessWidget {
  const _MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebasePhoneAuthProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assignment',
        scaffoldMessengerKey: Globals.scaffoldMessengerKey,
        // theme: AppTheme.lightTheme,
        // darkTheme: AppTheme.darkTheme,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: SplashScreen.id,
      ),
    );
  }
}
