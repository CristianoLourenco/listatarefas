import 'package:flutter/material.dart';
import 'package:listatarefas/widgets/toDoList.dart';
import 'package:listatarefas/models/date.dart';

class Lista extends StatefulWidget {
  Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

TextEditingController textEditor = TextEditingController();
List<Date> all = [];
DateTime date = DateTime.now();

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    void submit(String te) {
      String texto = textEditor.text;
      setState(() {
        all.add(
          Date(
            title: texto,
            datetime: DateTime.now(),
          ),
        );
      });
      textEditor.clear();
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(
              16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: textEditor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Adicionar uma tarefa',
                          hintText: 'ex: Estudar Flutter',
                        ),
                        onSubmitted: submit,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String texto = textEditor.text;
                        setState(() {
                          all.add(
                            Date(
                              title: texto,
                              datetime: DateTime.now(),
                            ),
                          );
                        });
                        textEditor.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff00d7f3),
                        padding: EdgeInsets.all(14),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ), //flexible -----------------------
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (Date texto in all)
                        ToDoList(
                          title: texto,
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child:
                          Text('Voce possui ${all.length} Tarefas pendentes'),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff00d7f3),
                        padding: EdgeInsets.all(14),
                      ),
                      child: Text(
                        'Limpar Tudo',
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

/* @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailcontroler,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 16,
                    ),
                    labelText: 'E-mal',
                    hintText: 'exemplo@exemplo.com',
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(),
                  ),
                  //obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(193, 0, 0, 0),
                  ),

                  onChanged: change,
                  onSubmitted: submut,
                ),
                ElevatedButton(
                  onPressed: login,
                  child: Text('Entrar'),
                ),
              ],
            )),
      ),
    );
  }

  void change(String changed) {
    print(changed);
    // o onchaged nos retorna o caractere que foi digitado, ele e o [submited] podem ser uteis para a validacao
  }


  void submut(String submited) {
    print(submited);
    //o [submitedd] nos retorna a informacao do textfield quando o usuario peciona na tecla de envio do teclado(enter), por essa razao ele [e] mais utilizado no flutter web
  }

  void login() {
    //para mainpular os textos dentro do textfield temos que utilizar o textEditionController

    String texto = emailcontroler.text;
    print(texto);
    emailcontroler.clear();
  }
}*/
