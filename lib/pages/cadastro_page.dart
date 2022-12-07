import 'package:flutter/material.dart';
import 'package:invetario_flutter/pages/home_page.dart';

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
        padding: const EdgeInsets.all(2),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: FloatingActionButton(
                  heroTag:
                      null, //quando ha mais de um FloatingActionButton utilizar
                  onPressed: () => {
                    Navigator.push(
                      // Resposável de ir para outra tela
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    )
                  },
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: const Icon(
                      Icons.keyboard_return,
                      size: 30,
                      color: Colors.black26,
                    )
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
                      Icons.save,
                      size: 50,
                      color: Colors.black26,
                    )),
              ),
            ],
          ),


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
                          keyboardType: TextInputType.number,
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
                              labelText: 'Centro de Custo',
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
                              labelText: 'Localização',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    )
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
                              labelText: 'Fornecedor',
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
                              labelText: 'Data de aquização',
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
                              labelText: 'Data Garantia',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    )
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
                              labelText: 'Responsável',
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
                              labelText: 'Valor do Bem',
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
                              labelText: 'Vida Útil(Anos)',
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
                              labelText: '% Depreciação/Ano',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    )
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
                              labelText: 'Observações',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    
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