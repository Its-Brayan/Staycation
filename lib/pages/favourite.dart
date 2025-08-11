import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Favorites",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF01226F)
          ),),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: "Hotels",
            ),
            Tab(text:"Article")
          ]),
        ),
        
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              child: Text("Hi"),
            )
          ],


          ),
        ),
    );
  }
}
