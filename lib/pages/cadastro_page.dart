import 'package:flutter/material.dart';

class CadastroPatrimonio extends StatefulWidget {
  const CadastroPatrimonio({super.key});

  @override
  State<CadastroPatrimonio> createState() => _CadastroPatrimonioState();
}

class _CadastroPatrimonioState extends State<CadastroPatrimonio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(
            255,
            231,
            219,
            219,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


              const Center(child:  Text('CADASTRO',
              style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(120, 0, 0, 0)),
              
              )),

               const Divider(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              labelText: 'código',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              labelText: 'número de série / identif.',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                ),                               

                const Divider(),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              labelText: 'descrição',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    
                  ],
                ),

                 const Divider(),
                Row(
                  children: [
                    Expanded(                      
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              labelText: 'Grupo de Bens',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              labelText: 'Filial',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    )
                  ],
                ),
                    




              ],
            ),
          ),
        ),
      ),
    );
  }
}