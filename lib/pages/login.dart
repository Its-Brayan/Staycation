import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child:SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 82, 0,0),
              child: Center(
                child: Column(
                  children: [
                    Image.network('https://cdn-icons-png.flaticon.com/128/7141/7141726.png'),
                    SizedBox(height:5),
                    Text('Login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        labelText: ('Phone number/E-mail'),
                        prefixIcon: Icon(Icons.person_2_outlined,
                        color: Color(0xFF01226F),),

                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        labelText: ('Password'),
                        prefixIcon: Icon(Icons.lock,
                        color: Color(0xFF01226F),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined,
                        color: Color(0xFF01226F),
                        ),


                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, '/');
                    },
                      style: ElevatedButton.styleFrom(
                      fixedSize:Size(330,33),
                        backgroundColor: Color(0xFF01226F),
                      ),
                        child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(

                          ),
                        ),
                        SizedBox(width: 3),
                        Text('Or Sign in With'),
                        SizedBox(width: 3),
                        Expanded(
                          child: Divider(

                          ),
                        )
                      ],
                    ),
                    SizedBox(height:15),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          ElevatedButton.icon(onPressed: (){

                          },
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
                      ElevatedButton.icon(onPressed: (){},
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
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Row(
                        children: [
                          Text('Don\'t have an account ?'),
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/signup');
                          }, child:Text('Register'),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    )
    );
  }
}
