import 'package:flutter/material.dart';

import '../core/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = true;
        print( 'isLoading: $isLoading');
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(35),
               // height: 200,
               // width: 200,
                child: Image.asset(
                  "assets/images/logo.png",
                 // height: 200,
                 // width: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Colors.amber,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Loading',
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
