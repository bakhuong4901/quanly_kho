import 'package:flutter/material.dart';
import 'package:quanly_kho/home_page/home_page.dart';
import 'package:quanly_kho/login_page/login_page.dart';
import 'package:quanly_kho/register_page/register_page_logic.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin()async{
    await Future.delayed(const Duration(seconds:  2));
    final register = Register();
    final name =await register.getString(Register.name);
    if(name.isEmpty){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));

    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              Spacer(),
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  minHeight: 5,
                ),
              ),
               Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
