import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String txtPizzaName;
  final String srcImage;
  const CardWidget(
      {Key? key, required this.txtPizzaName, required this.srcImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepOrangeAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Image(
            image: AssetImage('$srcImage'),
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            txtPizzaName,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
