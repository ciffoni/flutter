import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/score_screen.dart';

class PerguntaScreen extends StatefulWidget {
  @override
  _PerguntaScreenState createState() => _PerguntaScreenState();
}

class _PerguntaScreenState extends State<PerguntaScreen> {
  int answer = 0; //resposta pergunta
  int score = 0; //total de pontos
  int index = 0; //indice das perguntas
  //instancio a lista das questões
  List<Question> questionsList = Question.getquestionList();

  void VerificaResposta() {
    if (answer == questionsList[index].answer) {
      score = score + 1;
    } else {}
  }

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
                  questionsList[index].questionText,
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
                    title: Text(questionsList[index].option1),
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
                    title: Text(questionsList[index].option2),
                    onChanged: (int value) {
                      setState(() {
                        //faz a atualização da tela com a seleção do radio
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
                    value: 3,
                    groupValue: answer,
                    title: Text(questionsList[index].option3),
                    onChanged: (int value) {
                      setState(() {
                        //faz a atualização da tela com a seleção do radio
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
                    value: 4,
                    groupValue: answer,
                    title: Text(questionsList[index].option4),
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
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  VerificaResposta();
                  if (index < questionsList.length - 1) {
                    setState(() {
                      index = index + 1;
                      answer = 0;
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                                qtdequestao: questionsList.length,
                                resultado: score,
                              )),
                    );
                  }
                },
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 14),
                ),
                color: Color(0xffDA0175),
                textColor: Color(0xfff7f7f7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
