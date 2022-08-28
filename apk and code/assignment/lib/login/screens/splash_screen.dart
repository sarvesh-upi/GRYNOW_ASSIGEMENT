import 'package:encypt_cache/login/screens/home_screen.dart';
import 'package:encypt_cache/login/utils/globals.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_loader.dart';
import 'authentication_screen.dart';
// import 'home_screen.dart';


class SplashScreen extends StatefulWidget {
  static const id = 'SplashScreen';

  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    (() async {
      await Future.delayed(Duration.zero);
      final isLoggedIn = Globals.firebaseUser != null;

      if (!mounted) return;
      Navigator.pushReplacementNamed(
        context,
        isLoggedIn ? HomeScreen.id : AuthenticationScreen.id,
       
      );
    })();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
         backgroundColor:  Color(0xffFFFDF0),
     
        body: CustomLoader(),
      ),
    );
  }
}
