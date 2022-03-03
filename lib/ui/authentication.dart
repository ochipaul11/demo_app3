import 'package:demo_app3/net/flutterfire.dart';
import 'package:demo_app3/ui/home_page.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailField,
                    decoration: InputDecoration(
                        hintText: "example@email.com",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  TextFormField(
                    controller: _passwordField,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black)),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.lightBlue,
                    ),
                    child: MaterialButton(
                        onPressed: () async {
                          bool shouldNavigate =
                              await register(_emailField.text, _passwordField.text);
                          if (shouldNavigate) {
                            Navigator.pushNamed(context, HomePage.routeName);
                          }
                        },
                        child: Text("Register")),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.lightBlue,
                    ),
                    child: MaterialButton(
                        onPressed: () async {
                          bool shouldNavigate =
                              await signIn(_emailField.text, _passwordField.text);
                          if (shouldNavigate) {
                            Navigator.pushNamed(context, HomePage.routeName);
                          }
                        },
                        child: Text("Login")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
