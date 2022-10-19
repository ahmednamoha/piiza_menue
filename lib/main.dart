import "package:flutter/material.dart";
import 'package:tr13/widgets/card_widget.dart';

void main() => runApp(MyHome());

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final listPizzaNames = [
    {"PizzaName": "Pizza Qudaar", "PizzaURL": "assets/pizza1.jpg"},
    {"PizzaName": "pizza Fish", "PizzaURL": "assets/pizza.png"},
    {"PizzaName": "pizza large", "PizzaURL": "assets/pizza1.jpg"},
    {"PizzaName": "pizza small", "PizzaURL": "assets/pizza.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pizza House"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView(
          children: listPizzaNames.map((pizzaObject) {
            return CardWidget(
              txtPizzaName: pizzaObject['PizzaName']!,
              srcImage: pizzaObject['PizzaURL']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}
