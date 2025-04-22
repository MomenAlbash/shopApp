import 'package:flutter/material.dart';
import 'package:shopapp/widgets/CustomMaterialButton.dart';
import 'package:shopapp/widgets/CustomTextFormField.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOGIN',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'login now to browse our hot offiers',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  textInputType: TextInputType.emailAddress,
                  controller: emailController,
                  labelText: 'Email Address',
                  prefix: Icons.email_outlined,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your email address';
                    }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  textInputType: TextInputType.visiblePassword,
                  controller: passwordController,
                  labelText: 'Password',
                  prefix: Icons.lock_outline,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'password is too short';
                    }
                  },
                  suffix: Icons.visibility,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomMaterialButton(color: Colors.lightBlueAccent, onpressed: () {}),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('REGIStER'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
