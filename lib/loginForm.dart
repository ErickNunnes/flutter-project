import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() {
    return _LoginFormState();
}
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
        controller: emailController,
        decoration: InputDecoration(
          labelText: 'email',
          ),
      ),
      SizedBox(height: 15.0),
      TextField(
        controller: senhaController,
        decoration: InputDecoration(
          labelText: 'senha',
          ),
          obscureText: true,
      ),
      SizedBox(height: 15.0),
      ElevatedButton(onPressed:(){
        if (emailController.text == 'ericknunnes@gmail.com' && senhaController.text == '1234567890') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('login feito com sucesso!'),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('login invalido!'),
            ),
          );
        }
      }, 
      child: Text('login'),
      ),
    ],
   );
  }
}
