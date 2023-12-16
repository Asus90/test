import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/bloc/modelbloc_bloc.dart';
import 'package:test/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ModelblocBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController(text: 'qatest');
    final pass = TextEditingController(text: "qatest");

    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 236, 233, 233)
                        .withOpacity(0.3)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(hintText: "User Name"),
                  ),
                )),
          ),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 236, 233, 233)
                        .withOpacity(0.3)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: pass,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                )),
          ),
          SizedBox(
            height: 11,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 228, 209, 1)),
              child: BlocBuilder<ModelblocBloc, ModelblocState>(
                builder: (context, state) {
                  return TextButton(
                      onPressed: () {
                        final password = pass.text;
                        final nameOfuser = username.text;
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          BlocProvider.of<ModelblocBloc>(context).add(
                              ModelblocEvent.started(
                                  pass: password, user: nameOfuser));
                          if (state.data.isEmpty) {
                            CircularProgressIndicator();
                          } else {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => UserPage(
                                number: state.data['mobile'],
                                name: state.data['username'],
                              ),
                            ));
                          }
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ));
                },
              ))
        ],
      ),
    ));
  }
}
