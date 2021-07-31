import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC0CA33),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: 100, left: 50, right: 50),
        color: Colors.white,
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: SizedBox(
              width: 300,
              height: 150,
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Text(
            "Esqueceu sua senha ?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Por favor , informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ) ,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(Icons.email,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                hintText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
            ),
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFC0CA33),
                    Color(0xFFAFB42B),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )
            ),
            child: SizedBox.expand(
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text(
                  "Enviar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: (){},
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],),
      ),
    );
}
}