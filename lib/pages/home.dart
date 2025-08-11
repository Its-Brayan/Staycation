import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stay/pages/favourite.dart';
import 'package:stay/pages/profile.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network('https://cdn-icons-png.flaticon.com/128/6997/6997551.png',
                  width: 100,
                  height: 50),
                  Column(
                    children: [
                      Text('HELLO THERE',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),),
                      Text('Antony William',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 19,
                      ),),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90,10,0,0),
                    child: Stack(
                      children: [
                        IconButton(onPressed: (){},
                          icon: Icon(Icons.email),
                          iconSize: 30,
                        ),
                        Positioned(
                          top: 7,
                          right: 4,
                          child: Container(
                            padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            constraints: BoxConstraints(
                              maxHeight:16,
                              maxWidth:16,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(2, 0,4,1),

                              child: Text(

                                '3',
                                style: TextStyle(

                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                ],
              ),
              SizedBox(height:2),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    labelText: 'Explore Something fun',
                    suffixIcon: Icon(Icons.tune,
                      color:  Color(0xFF01226F),
                    ),
                    prefixIcon: Icon(Icons.search,size: 30,
                    color: Color(0xFF01226F) ),




                  ),
                ),
              ),


              Padding(padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Row(
                  children: [
                    Text('Category',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),),
                    Spacer(),

                    TextButton.icon(
                      label:Text('See All',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ) ,
                      onPressed: (){},




                        ),
                    Icon(Icons.keyboard_arrow_right),


                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    children: [
                      Chip(label: Text('Popular',

                        style:TextStyle(
                          color: Colors.white
                        ),

                      ),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),

                       backgroundColor: Color(0xFF01226F),

                      ),
                  SizedBox(width: 10),
                  Chip(label: Text("Modern",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                    backgroundColor: Color(0xFF01226F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                      SizedBox(width: 10),
                      Chip(label: Text("Beach",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                        backgroundColor: Color(0xFF01226F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      SizedBox(width:10),
                      Chip(label: Text("Mountain",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                        backgroundColor: Color( 0xFF01226F ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                      ),
                      SizedBox(width: 10),
                      Chip(label: Text("Lake",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                        backgroundColor: Color(0xFF01226F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),

                      ),
                      SizedBox(width: 10),
                      Chip(label: Text("Cabin",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                        backgroundColor: Color(0xFF01226F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),

                      )
                    ],
                  ),
                ),

              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                         Image.asset('assets/download.jpeg',
                           fit: BoxFit.cover,
                           width: 200,
                           height: 170,
                         ),
                            SizedBox(height:5),
                            Text("The Phoenix Hotel",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10.0,0, 0,0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_pin,
                                  color: Colors.yellow,
                                  ),
                                  Text("Sleman, DIY",
                                    style: TextStyle(
                                        color: Colors.grey.shade400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                              child: Text("start from",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              ),
                            ),

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20,0, 0, 0),
                                  child: Text("\$125/NIGHT",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 10,5),
                                  child: Icon(Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )

                              ],
                            ),



                          ],
                        ),
                      ),
                    ),
                         SizedBox(width: 10),
                          Expanded(
                            child: Card(

                              child: Column(
                                            children: [
                                              Image.asset('assets/aston.jpeg',
                                                fit: BoxFit.cover,
                                                width: 200,
                                                height: 170,
                                              ),
                                              SizedBox(height:5),
                                              Text("Aston White Coral",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(10.0,0, 0,0),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.location_pin,
                            color: Colors.yellow,
                                                    ),
                                                    Text("Sleman, DIY",
                            style: TextStyle(
                                color: Colors.grey.shade400
                            ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(0, 0,70, 0),
                                                child: Text("start from",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                  ),
                                                ),
                                              ),

                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(20, 0, 0,0),
                                                    child: Text("\$130/NIGHT",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),


                                                  ),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(0,0, 10,5),
                                                    child: Icon(Icons.favorite_border_outlined,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ],
                                              ),



                                            ],
                              ),
                            ),
                          ),
                  ],
                ),
              ),

           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Row(
               children: [
                 Transform.rotate(angle: 0.3,
                 child:Icon(Icons.navigation,
                  color: Colors.yellow,
                  ),
                 ),
                 Text("Top Nearby",
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 19,


                 ),
                 ),
                 Spacer(),
                 Column(
                   children: [
                     Text("Location",
                     style: TextStyle(
                       color: Colors.grey.shade400,
                     ),
                     ),
                     Row(
                       children: [
                         Text("Sleman, Yogyakarta",
                         style: TextStyle(
                           fontSize: 15,
                           color: Color(0xFF01226F),
                         ),),
                         Icon(Icons.keyboard_arrow_down,
                         color: Color(0xFF01226F),),
                       ],
                     )
                   ],
                 ),
             Icon(Icons.my_location,
               size:20.0 ,
             ),

               ],


             ),
           ),
              Card(
                child: Row(
                  children: [
                    Image.asset('assets/keratavilla.jpeg',
                    width: 150,
                    height:150,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text("Keraton Villa",
                          style: TextStyle(
                            fontSize: 16,
                            color:Color(0xFF01226F),
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Row(
                            children: [
                              Icon(Icons.location_pin,
                                size: 15,
                                color: Colors.yellow,
                              ),
                              Text("Sleman, DIY",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 10,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                          child: Text("\$125",

                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey.shade400
                          ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 30, 0),
                              child: Text("\$105",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(110, 0, 0,0),
                              child: Icon(Icons.favorite,
                              color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Image.asset('assets/jaloevilla.jpeg',
                      width: 150,
                      height:150,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text("Jadoel Villa",
                            style: TextStyle(
                              fontSize: 16,
                              color:Color(0xFF01226F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Row(
                            children: [
                              Icon(Icons.location_pin,
                                size: 15,
                                color: Colors.yellow,
                              ),
                              Text("Sleman, DIY",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                ),),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 10,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                          child: Text("\$225",

                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey.shade400
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 30, 0),
                              child: Text("\$125",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(110, 0, 0,0),
                              child: Icon(Icons.favorite,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.trending_up,
                  color: Colors.yellow
                    ,
                  ),
                  SizedBox(width: 10),
                  Text("Insights for you",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,

                      fontSize: 18,
                    ),),
                  Spacer(),
                  TextButton(onPressed: (){},
                      child:Text("See all"),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey.shade400,
                      ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Icon(Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,),
                  )


                ],
              ),


            ],



          ),

        ),





    ),


      ),


    );
  }
}
