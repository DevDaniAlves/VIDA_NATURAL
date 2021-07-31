import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage.dart';
import 'ResetPasswordPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(children: <Widget>[
              Positioned(
                child: Image.asset(
              "images/logovida.png",
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
              ),
              Positioned(
                top: 200,
                child: Container(
                    padding: EdgeInsets.all(32),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(children: <Widget>[
                      const TextField(
                          decoration: InputDecoration(
                              hintText: 'Usuário', icon: Icon(Icons.person))),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 62),
                        child: TextField(
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                              hintText: 'Senha',
                              icon: Icon(Icons.security),
                              suffixIcon: InkWell(
                                onTap: _mostrasenha,
                                child: const Icon(Icons.visibility),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFC0CA33),
                                Color(0xFFAFB42B),
                              ]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: SizedBox.expand(
                            child: TextButton(
                                child: Center(
                                  child: Text(
                                    'Login'.toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomePage()));
                                }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFC0CA33),
                                Color(0xFFAFB42B),
                              ]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: SizedBox.expand(
                            child: TextButton(
                                child: Center(
                                  child: Text(
                                    'CRIAR CONTA'.toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                onPressed: null),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, right: 32),
                              child: TextButton(
                                  child: const Text('Esqueceu sua Senha ?',
                                      style: TextStyle(color: Colors.black)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ResetPasswordPage()));
                                  })))
                    ])),
              ),
            ])));
  }

  void _mostrasenha() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
