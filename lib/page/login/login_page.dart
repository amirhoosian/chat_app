import 'package:chat_app/componnet/button_coustom.dart';
import 'package:chat_app/componnet/input_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();
  Login({super.key});

  void login() {
    print('Hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 30),
          Text(
            'به چت روم خشکل مشکلا خوش امدی',
            style: TextStyle(
                fontSize: 16, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 25),
          InputField(
            controller: _emailcontroller,
            hinttext: 'ایمیل خود را وارد کنید',
            obscuretext: false,
          ),
          InputField(
            controller: _pwcontroller,
            hinttext: 'رمز خود را وارد کنید',
            obscuretext: true,
          ),
          const SizedBox(height: 10),
          ButtonCoustom(ontap: login, text: 'login'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('بای');
                },
                child: Text(
                  'وارد شوید',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'اکانت دارید؟',
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      )),
    );
  }
}
