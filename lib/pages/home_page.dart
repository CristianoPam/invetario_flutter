import 'package:flutter/material.dart';
import 'package:invetario_flutter/pages/cadastro_page.dart';
import 'package:invetario_flutter/pages/login_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool saved = false; 
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(!saved){
          return false;

        }
        return true;
      },
      child: Container(
        padding: const EdgeInsets.only(top: 60),
        color: const Color.fromARGB(255, 231, 219, 219),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: FloatingActionButton(
                    heroTag:
                        null, //quando ha mais de um FloatingActionButton utilizar
                    onPressed: () => {
                      saved=true,
                      Navigator.push(
                        // Resposável de ir para outra tela
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      )
                      
                    },
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: const Icon(
                        Icons.keyboard_return,
                        size: 30,
                        color: Colors.black26,
                      ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: FloatingActionButton(
                      heroTag:
                          null, //quando ha mais de um FloatingActionButton utilizar
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      onPressed: () => [],
                      child: const Icon(
                        Icons.account_circle,
                        size: 50,
                        color: Colors.black26,
                      )),
                ),
              ],
            ),
    
            SizedBox(
              width: 350,
              height: 300,
              child: Image.asset('assets/images/logo.png'),
            ),
    
            // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
            Container(
              width: 300,
              height: 300,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Relatórios'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Patrimônio'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(
                          // Resposável de ir para outra tela
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CadastroPatrimonio(),
                          ),
                        );
                      },
                      child: const Text('Cadastrar'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Scan QRCode'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Configurações'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
