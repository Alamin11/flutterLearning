import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num num1 = 0, num2 = 0, result = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void subtruct() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = (num1 / num2);
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Calculator"),
      ),
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/math-symbols.jpg",
              fit: BoxFit.fill,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Calculated value: $result",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.amber),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: Text(
                        "First number:",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      hintText: "Input a number",
                      hintStyle: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    controller: t1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.amber),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: Text(
                        "Second number:",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      hintText: "Input a number",
                      hintStyle: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    controller: t2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: clear,
                        child: const Text(
                          "AC",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      MaterialButton(
                        onPressed: add,
                        child: const Text(
                          "+",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      MaterialButton(
                        onPressed: subtruct,
                        child: const Text(
                          "-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          "=",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      MaterialButton(
                        onPressed: multiply,
                        child: const Text(
                          "*",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      MaterialButton(
                        onPressed: divide,
                        child: const Text(
                          "/",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
