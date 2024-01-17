import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  var first= TextEditingController();
  var last= TextEditingController();
  var email= TextEditingController();
  var pass= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      SingleChildScrollView(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Container(
                margin: EdgeInsets.fromLTRB(1, 60, 0,0),
                child: Text(
                  "Welcome to Notion 4me",
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold ,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Center(
                  child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: first,
                            decoration:InputDecoration(
                              labelText: 'First Name',
                              hintText: 'Enter your first name',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.person,
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
                            controller: last,
                            decoration:InputDecoration(
                              labelText: 'Last Name',
                              hintText: 'Enter your Last name',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.person,
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
                            controller: email,
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
                            controller: pass,
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
                                child:
                                Text(
                                  "Sign up",
                                ),
                                onPressed:()
                                {
                                  /* Navigator.push(context,
                                   MaterialPageRoute(builder:(context)=> jjScreen() )
                                   );*/
                                }

                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                ),
            ],
    ),
      ),
    );
  }
}
