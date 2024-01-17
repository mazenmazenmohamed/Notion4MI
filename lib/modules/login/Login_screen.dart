import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../layout/background.dart';
import '../../layout/workspace.dart';
import 'register.dart';

class LoginScreen extends StatelessWidget {
 var emailC= TextEditingController();
  var passC= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children:
                  [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 20.0, height: 100.0),
                        const Text(
                          'Welcome',
                          style: TextStyle(fontSize: 43.0,
                            fontFamily: 'Horizon',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(width: 20.0, height: 100.0),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Horizon',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue,
                          ),
                          child: AnimatedTextKit(
                              animatedTexts: [
                              FadeAnimatedText('To !'),
                              FadeAnimatedText('To Notion 4Me !'),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ],
                    ),
              SizedBox(
                height: 30,
              ),
              // ignore: prefer_const_constructors
              Text(
                  'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailC,
                decoration:InputDecoration(
                  labelText: 'email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  enabledBorder: OutlineInputBorder
                    (
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ) ,
                  keyboardType: TextInputType.emailAddress,
              ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passC,
                      obscureText: true,
                      decoration:InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        enabledBorder: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ) ,

                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        child: Text('Sign in'),
                          onPressed:()
                          {
                             Navigator.push(context,
                                 MaterialPageRoute(builder:(context)=> workspace() )
                            );
                           }

                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text(
                            "don't have an account?",
                        ),
                        TextButton(
                          onPressed: ()
                          {
                             Navigator.push(context,
                                 MaterialPageRoute(builder:(context)=> RegisterScreen() )
                               );
                          },
                            child: Text(
                                'REGISTER NOW',
                               style: TextStyle(
                                 color: Colors.blueAccent,
                               ),
                            ),
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
