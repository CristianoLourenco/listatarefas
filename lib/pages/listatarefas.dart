import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final TextEditingController emailcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adicionar uma tarefa',
                    hintText: 'ex: Estudar Flutter',
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('+'),
              ),
            ],
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