import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final number;
  final name;
  UserPage({Key? key, required this.number, required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 239, 251, 6),
            width: MediaQuery.of(context).size.width,
            height: 88,
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.line_weight_rounded),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
                  ),
                  Icon(Icons.notifications),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "New",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 213, 12, 12),
                                  fontSize: 22,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "in progress",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 195, 255),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "Resolved",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 108, 255, 55),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 500,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    width: 400,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Name:${name} ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              decoration: TextDecoration.none),
                        ),
                        Container(
                          child: Text(
                            "${number}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
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
