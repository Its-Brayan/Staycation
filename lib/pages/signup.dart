import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
      body: SafeArea(
          child:SingleChildScrollView(

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 62, 0, 0),
              child: Column(
                children: [

               Image.network('https://cdn-icons-png.flaticon.com/128/17163/17163785.png',
               width: 300.0,
               height: 150.0),
                  Text('Register',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 7.0),
                  Text('Get a discount for new member',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 15.0,
                  ),),
                  SizedBox(height:5),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),

                        prefixIcon: Icon(Icons.person_outline_rounded),
                        labelText: 'Phone Number/ E-mail'
                      ),

                    ),

                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/');
                  },
                      child:Text('Register',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),),
                      style:ElevatedButton.styleFrom(
                        fixedSize: Size(330, 43),
                        backgroundColor:Color(0xFF01226F),
                      ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(


                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('Or Register with'),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                 Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Row(
                     children: [
                       SizedBox(width: 50),
                       ElevatedButton.icon(onPressed: (){},
                         style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                            padding: EdgeInsets.all(8),
                           ),
                         label:Image.network('https://cdn-icons-png.flaticon.com/128/5968/5968764.png',
                             width: 25,
                             height: 25),
                         ),
                       SizedBox(width:40),
                       ElevatedButton.icon(onPressed: (){},
                         style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding: EdgeInsets.all(8),
                         ),
                         label:Image.network('https://cdn-icons-png.flaticon.com/128/174/174855.png',
                             width: 25,
                             height: 25),
                       ),
                           SizedBox(width: 40),
                       ElevatedButton.icon(onPressed: (){

                       },
                         style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding: EdgeInsets.all(8),
                         ),
                         label:Image.network('https://cdn-icons-png.flaticon.com/128/12942/12942302.png',
                             width: 25,
                             height: 25),
                       ),

                     ],
                   ),
                 ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                    child: Row(
                      children: [
                        Text('Already have an account?'),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        }, child:Text('Sign in',
                        style: TextStyle(
                          color: Color(0xFF01226F),
                        ),))
                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
        ),
      ),
    )
    );
  }
}
