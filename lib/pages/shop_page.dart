import 'package:flutter/material.dart';
import 'package:nikyee/pages/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 137, 136, 136),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.black)),
              Icon(
                Icons.search,
                color: const Color.fromARGB(255, 50, 50, 50),
              ),
            ],
          ),
        ),
        //message

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text("everyone fly...,some fly longer than others"),
      ),

        //hot picks
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        
        child: Row( 
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          
          Text("Hot Picks🔥",style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ) ,
          
          ),
        
          Text("see all",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),)
        ],
        
        ),
      )
      const SizedBox(height: 10),

      Expanded(
        child: ListView.builder(itemBuilder: (context,index){
          return ShoeTile();
        }),
      )

      ],
    );
  }
}
