import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text("Calculadora"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              style: TextStyle(fontSize: 100),
            ),
            Divider(
              height: 1.5,
              color: Colors.grey[900],
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "C",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "+/-",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "%",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "DEL",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.5,
              color: Colors.grey[900],
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "7",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "8",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "9",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "/",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.5,
              color: Colors.grey[900],
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "4",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "5",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "6",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "X",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.5,
              color: Colors.grey[900],
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "3",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "-",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.5,
              color: Colors.grey[900],
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      ".",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "=",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[900],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "+",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.5,
              color: Colors.grey[900],
            ),
          ],
        ),
      ),
    );
  }
}
