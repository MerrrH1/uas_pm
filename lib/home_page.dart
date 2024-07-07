import 'package:flutter/material.dart';
import 'detail_food_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Menu',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false, // Menghilangkan tombol navigasi kembali
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          buildMenuItem(context, 'Nasi Goreng', 'Rp 10.000', 'images/nasi_goreng.jpeg'),
          SizedBox(height: 10),
          buildMenuItem(context, 'Mie Ayam', 'Rp 12.000', 'images/mie_ayam.jpeg'),
          SizedBox(height: 10),
          buildMenuItem(context, 'Soto Ayam', 'Rp 15.000', 'images/soto_ayam.jpeg'),
          SizedBox(height: 10,),
          buildMenuItem(context, 'Sate Ayam', 'Rp 13.000', 'images/sate_ayam.jpeg'),
          SizedBox(height: 10),
          buildMenuItem(context, 'Mie Rebus', 'Rp 14.000', 'images/mie_rebus.jpeg'),
        ],
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, String title, String price, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailFoodPage()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 120,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10), // Margin di antara setiap menu
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
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
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
