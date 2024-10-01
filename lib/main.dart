import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark)?ThemeMode.dark:ThemeMode.light,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 650,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:(isDark)?Color(0xff1C1C1E):Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          color: (isDark)?Colors.white10:Colors.black12,
                          blurRadius:0.9,
                          spreadRadius:0.15,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Yo Man!',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "It's a simple example of\n          dark theme",
                          style:
                              TextStyle(fontSize: 15, color: Color(0Xff9D9CA1)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDark = false;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(15),
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: (isDark)
                                  ? Colors.amber
                                  : Color(0xffFFCC00),
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: const Text(
                            'Light Icon',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDark=true;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: (isDark)
                                  ? Color(0xffFF4539)
                                  : Color(0xffFD3B31),
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: const Text(
                            'Dark Icon',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isDark = false;
