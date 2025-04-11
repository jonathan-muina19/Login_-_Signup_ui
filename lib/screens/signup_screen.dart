import 'package:boite_connexion_ui/components/my_button.dart';
import 'package:boite_connexion_ui/components/my_textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final ReusernameController = TextEditingController();
  bool isVisible = false;
  
  void signup(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Créer un nouveau compte',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
             ) ,
            ),
          ),
          const SizedBox(height: 20),

          // username textfield
          MyTextfield(
            controller: usernameController,
            hinttext: "Nom d'utilisateur",
            obscuretext: false,
            prefixIcon: Icon(Icons.person),
            suffixIcon: null,
          ),

          const SizedBox(height: 10),

          // password textfield
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

          // Re-enter password textfield
          MyTextfield(
              controller: ReusernameController,
              hinttext: "Ressaisir mot de passe",
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
          
          // Button signup 
          MyButton(
            onTap: signup,
            buttonTitle: 'Inscripion'
          ),
          const SizedBox(height: 20),

          // Already have account?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Vous avez déjà un compte?",
                style: TextStyle(
                    color: Colors.grey[700]
                ),
              ),
              const SizedBox(width: 2),
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Connectez-vous",
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
    );
  }
}
