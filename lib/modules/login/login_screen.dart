
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fundamentals/shared/componants/componants.dart';

class LoginScreen extends StatefulWidget
{
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    defaultFormField(
                      controller: emailController,
                      label: 'Email Address',
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validator: (String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'email must not be empty';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                      controller: passwordController,
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: isPassword? Icons.visibility : Icons.visibility_off,
                      suffixPressed: ()
                      {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      type: TextInputType.visiblePassword,
                      isPassword: isPassword,
                      validator: (String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'password must not be empty';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultButton(
                      radius: 5,
                      isUpperCase: false,
                        function: ()
                        {
                          if(formKey.currentState!.validate())
                          {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        },
                        text: 'login',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Don\'t have an account?',
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text(
                              'Register Now'
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
