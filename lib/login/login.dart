import 'package:flutter/material.dart';
import 'package:hello/home/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('LayoutBuilder Example')),
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 60.0, bottom: 16),
                                child: Center(
                                  child: Container(width: 120, height: 80, child: Image(image: AssetImage('asset/images/logo.png'))),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Text(
                                      'Login',
                                      style: TextStyle(color: Colors.black87, fontSize: 24),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text('Gunakan Akun Sistem Anda', style: TextStyle(color: Colors.black54)),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 1.0, color: Colors.black12),
                                          ),
                                          border: OutlineInputBorder(),
                                          labelText: 'Email',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 1.0, color: Colors.black12),
                                          ),
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      height: 48,
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(horizontal: 16),
                                      decoration: BoxDecoration(color: Colors.blue.shade600, borderRadius: BorderRadius.circular(4)),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute<void>(
                                              builder: (context) => HomePage(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Login',
                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 32.0,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Center(
                                child: Text(
                                  'Copyright © Dinas Perumahan dan Kawasan Permukiman Kota Banjarmasin 2021',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
