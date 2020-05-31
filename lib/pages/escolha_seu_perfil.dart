import 'dart:convert';

// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:checkpoint_patient/pages/cadastro/verificacao_de_identidade.dart';
// import 'package:checkpoint_patient/secrets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:hackaprev/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EscolhaSeuPerfilScreen extends StatefulWidget {
  @override
  _EscolhaSeuPerfilScreenState createState() => _EscolhaSeuPerfilScreenState();
}

class _EscolhaSeuPerfilScreenState extends State<EscolhaSeuPerfilScreen> {
  bool isLoading = false;
  List perfis = [
    {
      'title': 'Conservador',
      'image': 'assets/image-16.png',
      'description':
          "Esse tipo de investidor prioriza a segurança em suas aplicações. Em sua diversificação de investimentos, produtos de baixo risco"
    },
    {
      'title': 'Moderado',
      'image': 'assets/image-17.png',
      'description':
          "Esse investidor está entre os conservadores e os arrojados. Mas já possui tolerância a riscos de longo prazo."
    },
    {
      'title': 'Ousado',
      'image': 'assets/image-15.png',
      'description':
          "É um investidor que tem a segurança da renda fixa, mas também aplica parte de seus recursos em renda variável, buscando retornos acima da média do mercado."
    },
    {
      'title': 'ExtremeCrazy',
      'image': 'assets/Group-1.png',
      'description':
          "Ele entende que as perdas a curto prazo são momentâneas e necessárias para aproveitar lucros mais altos a longo prazo."
    },
  ];
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
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Escolha seu tipo perfil',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        width: double.maxFinite,
                        height: 400,
                        margin: EdgeInsets.all(16),
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: 0),
                          // height: 340,
                          child: PageView.builder(
                              itemCount: perfis.length,
                              itemBuilder: (context, index) {
                                var perfil = perfis[index];
                                return CardItem(
                                  asset: perfil['image'],
                                  description: perfil['description'],
                                  title: perfil['title'],
                                );
                              },
                              controller: PageController(
                                viewportFraction: 0.8,
                                initialPage: 0,
                              )),
                        ))
                    // Image.asset(
                    //   'assets/logo.png',
                    //   width: 120,
                    // ),
                  ]))),
    ]));
  }
}

class CardItem extends StatelessWidget {
  var asset;
  var title;
  var description;
  CardItem({this.asset, this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Image.asset(asset),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(description, style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: MaterialButton(
                color: Color(0XFF63ABFF),
                onPressed: () {
                  // getInformationFromGrid();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePageScreen()));
                },
                child: Text('Próximo >', style: TextStyle(color: Colors.white)),
                minWidth: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
