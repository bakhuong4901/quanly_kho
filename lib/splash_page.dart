import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(

          child: Column(
            children: [
              const Spacer(),
              const CircularProgressIndicator(),
              TextButton(onPressed: (){}, child: const Text('Dang nhap'),),
              TextButton(onPressed: (){}, child: const Text('Home'),),
               const Spacer(),



            ],
          ),
        ),
      ),
    );
  }
}
