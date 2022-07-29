import 'package:flutter/material.dart';
import 'package:quanly_kho/home_page/home_page.dart';
import 'package:quanly_kho/register_page/register_page.dart';
import 'package:quanly_kho/register_page/register_page_logic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Register register = Register();
  TextEditingController account = TextEditingController();
  TextEditingController password = TextEditingController();

  void checkLogin() async {
    String account = this.account.text;
    String password = this.password.text;
    String _account = await register.getString(Register.account);
    String _password = await register.getString(Register.password);

    if (account == _account && password == _password) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      showDialog<int>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Thong Bao"),
          content: const Text('Tai khoan hoac mat khau khong dung'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, 2);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Đăng nhập  '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: NetworkImage(
                  'https://cdn.nhanlucnganhluat.vn/uploads/images/ABB8AC81/logo/2019-04/logo.jpg',
                ),
                width: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: account,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Tên đăng nhập  ',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                controller: password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Mật khẩu ',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _createButton(
                  callback: () {
                    checkLogin();
                  },
                  title: 'Đăng nhập  '),
              const SizedBox(
                height: 10,
              ),
              const Text('OR'),
              const SizedBox(
                height: 10,
              ),
              _createButton(
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ));
                  },
                  title: 'Đăng ký '),
              const SizedBox(
                height: 10,
              ),
              const Text('Privacy Policy'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createButton(
      {required VoidCallback callback, required String title}) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        onPressed: callback,
        child: Text(title),
      ),
    );
  }
}
