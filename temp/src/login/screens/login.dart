import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();


  validate(){
    if(_loginFormKey.currentState!.validate()){
      try{
        print("validation success");
        Navigator.pushNamed(context, "/dashboard");
      }
      catch(error){
        print("validation failed");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Login Id";
                          }
                          return null;
                        },
                        controller: userNameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Enter Login ID",
                          /*border:  OutlineInputBorder(
                              borderSide:  BorderSide(color: Colors.teal)),*/
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                          return null;
                        },
                        controller: userPasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Enter Password",
                          /*border:  OutlineInputBorder(
                              borderSide:  BorderSide(color: Colors.teal)),*/
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            validate();
                          },
                          child: const Text("Continue", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
