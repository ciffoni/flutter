import 'package:flutter/material.dart';

class PerguntaScreen extends StatefulWidget {
  @override
  _PerguntaScreenState createState() => _PerguntaScreenState();
}

class _PerguntaScreenState extends State<PerguntaScreen> {
  int answer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        // title: Text('Perguntasa'),
        title: Image(
          image: AssetImage('lib/assets/icone.png'),
        ),
      ),
      body: Column(
        children: [
          Container(
//            color: Colors.red,
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pergunta 1:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'O que é Flutter?',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  //height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          offset: Offset(1, 3)),
                    ],
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text('É um framework da Google.'),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  //height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          offset: Offset(1, 3)),
                    ],
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text('É um novo Sistema Operacional.'),
                    onChanged: (int value) {
                      setState(() {
                        //faz a atualização da tela com a seleção do radio
                        answer = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
