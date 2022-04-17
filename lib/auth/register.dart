import 'package:flutter/material.dart';
import 'package:wirpo/auth/login.dart';
import 'package:wirpo/widgets/textfeild.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: const  Icon(Icons.menu),
        elevation: 0,
        title:const  Center(child: Text('Sign Up')),
        actions:const  [Icon(Icons.person)],
      ),
      body: Container(
        margin:const EdgeInsets.all(50),
        child: Column(
          children: [
          //  const  Text('Sign Up'),
            customTextFeild(
                50, double.infinity, 'Name', nameController, TextInputType.text),
            customTextFeild(50, double.infinity, 'Email', emailController,
                TextInputType.text),
            customTextFeild(50, double.infinity, 'Password', passwordController,
                TextInputType.text),
                // Container(child: Icon(Icons.verified_user_sharp),),
                
            TextButton(onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
  );
            }, child: const  Text('Sign Up')),
            TextButton(onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
  );
            }, child: const  Text('Already  have an account? Login')),

          ],
        ),
      ),
    );
  }
}
