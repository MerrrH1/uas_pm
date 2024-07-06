import 'package:flutter/material.dart';
import 'detail_food_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailFoodPage()
                        )
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3)
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                                'images/nasi_goreng.jpeg',
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('Nasi Goreng',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),),
                          ],
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