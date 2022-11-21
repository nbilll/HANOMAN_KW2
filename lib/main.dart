import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obsecureText = true;

  @override
  build(BuildContext context) {
    print(_obsecureText);

    return MaterialApp(
        title: 'tes app',
        home: Scaffold(
          backgroundColor: Colors.amber[900]!,
          appBar: AppBar(
            backgroundColor: Colors.amber[900]!,
            title: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(0),
              child: ElevatedButton.icon(
                onPressed: (() {}),
                icon: Icon(Icons.error_sharp),
                label: Text('tutorial penggunaan'),
                style: ElevatedButton.styleFrom(primary: Colors.amber[900]!),
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('images/logohanoman1.jpeg'),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.only(top: 75),
                ),
                Container(
                  child: Text(
                    'HANOMAN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      border: UnderlineInputBorder(),
                      //filled: true,
                      labelText: "Nama Pengguna ",
                      labelStyle: TextStyle(
                          color: Color.fromARGB(255, 215, 215, 215),
                          fontSize: 17,
                          fontStyle: FontStyle.normal),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: ""),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 25),
                      border: UnderlineInputBorder(),
                      //filled: true,
                      labelText: "Kata Sandi",
                      labelStyle: TextStyle(
                          color: Color.fromARGB(255, 215, 215, 215),
                          fontSize: 17,
                          fontStyle: FontStyle.normal),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                          child: _obsecureText
                              ? Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )),
                      hintText: ""),
                  obscureText: _obsecureText,
                  maxLength: 6,
                ),
                new SizedBox(
                  width: 375.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: Colors.amber[900]),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Perlu Bantuan?',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                Container(
                  child: Text(
                    'Versi 1.31.0',
                    style: TextStyle(
                        color: Color.fromARGB(255, 215, 215, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  padding: EdgeInsets.only(top: 175),
                ),
              ],
            ),
          ),
        ));
  }
}
