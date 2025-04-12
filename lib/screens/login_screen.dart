import 'package:boite_connexion_ui/components/my_button.dart';
import 'package:boite_connexion_ui/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isVisible = false;

  void Login(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
                children: [
                  const SizedBox(height: 30),
                  // Logo
                  Image.asset('assets/images/login.png', width: 210,),
                  const SizedBox(height: 30),
                  // Username Textfield

                  MyTextfield(
                    controller: usernameController,
                    hinttext: "Nom d'utilisateur",
                    obscuretext: false,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: null,
                  ),
                  const SizedBox(height: 10),

                  // Password textfield
                  MyTextfield(
                    controller: passwordController,
                    hinttext: "Mot de passe",
                    obscuretext: !isVisible,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            isVisible = !isVisible;

                          });
                        }
                    )
                  ),
                  const SizedBox(height: 10),

                  // Button ->
                  MyButton(
                    buttonTitle: 'Connexion',
                    onTap: Login,
                  ),
                  const SizedBox(height: 20),
                  // Dont have a account ?
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Pas de compte?",
                      style: TextStyle(
                        color: Colors.grey[700]
                        ),
                      ),
                      const SizedBox(width: 2),
                      TextButton(
                          onPressed: () => Navigator.pushNamed(context, '/signup'),
                          child: Text("Créer un compte",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                      )
                    ],
                  )

                ],
              ),
          ),
        ),
      ),

    );
  }
}
