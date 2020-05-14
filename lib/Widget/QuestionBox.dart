import 'package:flutter/material.dart';
import 'package:netflix_clone/Style/Style.dart';

class QuestionBox extends StatefulWidget {

  final title;
  QuestionBox(this.title);

  @override
  _QuestionBoxState createState() => _QuestionBoxState(this.title);
}

class _QuestionBoxState extends State<QuestionBox> {

  var title;
  _QuestionBoxState(this.title);

  @override
  Widget build(BuildContext context) {
    var totalHeigh = MediaQuery.of(context).size.height;
    var totalWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        width: totalWidth * 0.64,
        color: Color(0xff303030),
        height: totalHeigh * 0.12,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0), 
              child: Text(title,
              style: ThemeText.queText,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 32.0,  
              ),
            )
          ],
        ),
      ),
    );
  }
}
