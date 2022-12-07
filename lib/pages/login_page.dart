// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:invetario_flutter/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<
      FormState>(); //formeKey vai carregar a validação dos TextFormFild para Button

  bool saved = false;  //variável saved

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(!saved){
          return false;

        }
        return true;
      },
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 231, 219, 219),
          body: Padding(
            padding: EdgeInsets.all(10),
            //espaçamento de fora
            child: Center(
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/logo.png'),
                    ),
    
                    Divider(),
    
                    TextFormField(
                      autofocus:
                          true, //quando,)
                                //acessar essa tela, vai focar nesta campo
                      keyboardType: TextInputType
                      .text, // carrega o teclado para somente númerico se for o caso
                      style: new TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                      labelText: "USUÁRIO",
                      labelStyle: TextStyle(color: Colors.black)),
                      validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      //valida se é vazio ou null
                      return 'Usuário Obrigatório';
                    }
                    return null;
                  },
                ),

                Divider(), //cria um espaçamento entre os dois campos (TextFormFild)

                TextFormField(
                  autofocus: true,
                  obscureText:
                      true, //quando acessar essa tela, vai focar nesta campo
                  keyboardType: TextInputType
                      .text, // carrega o teclado para somente númerico se for o caso
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "SENHA",
                      labelStyle: TextStyle(color: Colors.black)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {                      
                      return 'Senha Obrigatória';
                    }
                    return null;
                  },
                ),

                Divider(),

                ButtonTheme(
                    height: 60.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: () => {
                        if (formKey.currentState?.validate() == true)
                          {
                            saved=true,
                            Navigator.push(
                              // Resposável de ir para outra tela
                              context,
                              MaterialPageRoute(
                                
                                builder: (context) => Homepage(),
                              ),
                            ),
                          }
                      },
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
