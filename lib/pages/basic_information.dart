import 'dart:convert';

// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:checkpoint_patient/pages/cadastro/verificacao_de_identidade.dart';
// import 'package:checkpoint_patient/secrets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BasicInformation extends StatefulWidget {
  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  TextEditingController cpfController =
      new MaskedTextController(mask: '000.000.000-00');
  TextEditingController dataController =
      new MaskedTextController(mask: '00/00/0000');
  TextEditingController telefoneController =
      new MaskedTextController(mask: '(00) 00000-0000');
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
                    Container(
                        width: double.maxFinite,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/pattern1.png'),
                                fit: BoxFit.fill))),
                    // Image.asset(
                    //   'assets/logo.png',
                    //   width: 120,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                labelText: 'Nome',
                                labelStyle: TextStyle(),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: cpfController,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                labelText: 'CPF',
                                labelStyle: TextStyle(),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                labelText: 'RG',
                                labelStyle: TextStyle(),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: dataController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: 'Data de Nascimento',
                                labelStyle: TextStyle(),
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                )),
                          ),
                        ],
                      ),
                    )
                  ]))),
      Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: MaterialButton(
            color: Color(0XFF63ABFF),
            onPressed: () {
              // getInformationFromGrid();
            },
            child: Text(
              'Próximo >',
              style: TextStyle(),
            ),
            minWidth: 150,
          ),
        ),
      )
    ]));
  }
}
