import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            height: 300,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade900, Colors.green.shade500],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 250,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  50,
                ),
              ),
            ),
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Email",
                        ),
                      ),
                      Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Password",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      fixedSize: const Size(
                        double.infinity,
                        48,
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Login with SNS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          fixedSize: const Size(
                            double.infinity,
                            48,
                          ),
                        ),
                        child: const Text(
                          "Facebook",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          fixedSize: const Size(
                            double.infinity,
                            48,
                          ),
                        ),
                        child: const Text(
                          "Github",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
