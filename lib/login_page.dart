import 'package:flutter/material.dart';
import 'home_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: Container(
            width: 350,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Selamat Datang di ',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('DineDash',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  width: 290,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Username'),
                          icon: Icon(Icons.person,
                            size: 20,),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          icon: Icon(Icons.lock,
                            size: 20,),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 50),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                          (Route<dynamic>route) => false,
                    );
                  },
                  child: Text('Masuk',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                ),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Belum Punya Akun?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage())
                          );
                        },
                        child: Text('Daftar disini',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),)
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}