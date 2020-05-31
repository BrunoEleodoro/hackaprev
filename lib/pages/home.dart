import 'dart:convert';

// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:checkpoint_patient/pages/cadastro/verificacao_de_identidade.dart';
// import 'package:checkpoint_patient/secrets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SingleChildScrollView(
          child: Container(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                            width: double.maxFinite,
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/home.png'),
                            ))),
                        Container(
                          width: double.maxFinite,
                          height: 50,
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                              child: Image.asset('assets/logo_menor.png')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Dev’s do flutter',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/Group 8.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Text(
                            "- Olá, venha fazer parte dessa causa, o dinheiro arrecadado vai ser investido em renda variavel, (ALTO RISCO) \n\n- Você tambem conta com um plano da UNIMED PREMIUM PLUS"),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Integrantes',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text('A'),
                            backgroundColor: Colors.blue,
                          ),
                          title: Text('Andrea Silva'),
                          subtitle: Text('Pernambuco'),
                          trailing: Text(
                            'ADM',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text('B'),
                            backgroundColor: Colors.blue,
                          ),
                          title: Text('Breno Antonio'),
                          subtitle: Text('Pernambuco'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text('C'),
                            backgroundColor: Colors.blue,
                          ),
                          title: Text('Carlos Adriano'),
                          subtitle: Text('Recife'),
                        ),
                      ),
                    )
                  ]))),
    ]));
  }
}
