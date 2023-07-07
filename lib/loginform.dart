import 'package:flutter/material.dart';
import 'mainmenu.dart';

 class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> formValues = {};

    return Scaffold(
      body:  Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              child: Image.asset('assets/imgs/open-source.png')
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                 TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Username',
                  ),
                  validator: (value){
                    if(value == ""){
                      return "username cannot be empty";
                    }
                    formValues.putIfAbsent("username", () => value);
                    return null;
                  },
                ),
                TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value){
                  if(value == ""){
                    return "password cannot be empty";
                  }
                  formValues.putIfAbsent("password", () => value);
                  return null;
                }
              ),
              ElevatedButton(
                child: const Text('Login'), 
                onPressed: () => {
                if (_formKey.currentState!.validate() ) {
                   if(formValues["username"] == "test@test.it" && formValues["password"]=="password"){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const MainMenu()
                    ))
                   }
                }
              },
              ),
              ElevatedButton(
                child: const Text('Enter as Guest'), 
                onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const MainMenu()
                    ))
                }
              )
          ]
          .map((widget) => 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
             child: widget)).toList()
          )),
      ])),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState(){
    return LoginFormState();
  } 
}