import 'package:flutter/material.dart';
import 'package:nikyee/pages/home_page.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo-image
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/logo.png', height: 370),
              ),
              const SizedBox(height: 0),
              // text
              Text(
                "Just Do It",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Brand New Sneakers And Custom Shoes With Premium Quality  ",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              //home-button
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25.0),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
