import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackaprev/pages/basic_information.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.white
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('assets/fundo_login.png'),
            //         fit: BoxFit.cover)),
          ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   color: Colors.black.withOpacity(0.7),
          // ),
          SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 130,
                  ),
                  // Image.asset(
                  //   'assets/logo.png',
                  //   width: 120,
                  // ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/hack-a-prev-logo.jpg'))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(color: Colors.grey),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: new UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.grey)),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.grey,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(color: Colors.grey),
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: new UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.grey)),
                              labelText: 'Senha',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.grey,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          minWidth: double.maxFinite,
                          onPressed: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePage()));
                          },
                          child: Text('ENTRAR'),
                          color: Color(0XFF1BABFC),
                        ),
                        MaterialButton(
                          minWidth: double.maxFinite,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BasicInformation()));
                          },
                          child: Text('CADASTRAR'),
                          color: Colors.greenAccent,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
