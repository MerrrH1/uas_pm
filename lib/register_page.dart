import 'package:flutter/material.dart';
import 'package:uas_pm/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: Container(
            width: 350,
            height: 470,
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
                    Text('Kafe Sigma',
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
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          icon: Icon(Icons.lock,
                            size: 20,),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text('Confirm Password'),
                          icon: Icon(Icons.lock,
                            size: 20,),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )
                    );
                  },
                  child: Text('Daftar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                ),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sudah Punya Akun?',
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
                        child: Text('Masuk disini',
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
