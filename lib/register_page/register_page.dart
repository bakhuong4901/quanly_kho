import 'package:flutter/material.dart';
import 'package:quanly_kho/login_page/login_page.dart';
import 'package:quanly_kho/register_page/register_page_logic.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController account = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng ký '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle,
                  color: Colors.blueGrey,
                ),
                iconSize: 50,
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Expanded(child: createTextField('Tên ', name)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: createTextField(' Ho ', surname)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              createTextField('Tên đăng nhập ', account),
              const SizedBox(
                height: 10,
              ),
              createTextField('Mật khẩu ', password),
              const SizedBox(
                height: 10,
              ),
              createTextField('Nhập lại  Mật khẩu ', rePassword),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () async {
                    Register register = Register();
                    String name = this.name.text;
                    String surname = this.surname.text;
                    String account = this.account.text;
                    String password = this.password.text;
                    String rePassword = this.rePassword.text;

                    await register.putString(Register.name, name);
                    await register.putString(Register.surname, surname);
                    await register.putString(Register.account, account);
                    await register.putString(Register.password, password);
                    await register.putString(Register.rePassword, rePassword);

                    Navigator.pop(context);

                  },
                  child: const Text('Đăng ký '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget createTextField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: title,
      ),
    );
  }
}
