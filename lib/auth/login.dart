import 'package:flutter/material.dart';
import 'package:wirpo/auth/register.dart';
import 'package:wirpo/home/home.dart';
import 'package:wirpo/widgets/textfeild.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:const  Center(child: Text('Login Page')),
      ),
      body: Container(
        margin: const EdgeInsets.all(50),
        child: ListView(
          children: [
          //  const  Text('Login'),
            const Icon(Icons.person,size: 40,),
            customTextFeild(50, double.infinity, 'Email', emailController,
                TextInputType.text),
            customTextFeild(50, double.infinity, 'Password', passwordController,
                TextInputType.visiblePassword),
            TextButton(onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Home()),
  );
            }, child: const  Text('Login')),
            TextButton(onPressed: () {
              Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) =>const Register()),
  );
            }, child: const  Text('Don\'t have an account? Sign Up')),

          ],
        ),
      ),
    );
  }
}
