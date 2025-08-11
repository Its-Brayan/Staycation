import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:[

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(50.0),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScUIAcXgRaNDVvwWAkLcM5twP2KbyCMjPaqg&s',

                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              Text("Antony William",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text("AntonyWilliam@example.com",
              style: TextStyle(
                fontWeight: FontWeight.w100,
              ),
              ),
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Column(
             children: [
               ListTile(
                 leading:Icon(Icons.person,
                 size: 15.0,),
                 title: Text("Personal Information",
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                 ),),
                 trailing: Icon(Icons.keyboard_arrow_right,
                 size: 18,),
                 tileColor: Colors.grey.shade50,
                 onTap: (){
                   Navigator.of(context).pushNamed("/personalinfo");
                 },
               ),
               SizedBox(height: 15),
               ListTile(
                 leading:Icon(Icons.privacy_tip,
                   size: 15.0,),
                 title: Text("Privacy and Sharing",
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                 ),),
                 trailing: Icon(Icons.keyboard_arrow_right,
                   size: 18,),
                 tileColor: Colors.grey.shade50,
                 onTap: (){},
               ),
               SizedBox(height: 15),
               ListTile(
                 leading:Icon(Icons.notifications,
                   size: 15.0,),
                 title: Text("Notification",
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                 ),),
                 trailing: Icon(Icons.keyboard_arrow_right,
                   size: 18,),
                 tileColor: Colors.grey.shade50,
                 onTap: (){
                   Navigator.pushNamed(context, '/notification');
                 },
               ),
               SizedBox(height: 15),
               ListTile(
                 leading:Icon(Icons.comment,
                   size: 15.0,),
                 title: Text("Review",
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                 ),),
                 trailing: Icon(Icons.keyboard_arrow_right,
                   size: 18,),
                 tileColor: Colors.grey.shade50,
                 onTap: (){},
               ),
               SizedBox(height: 15),
               ListTile(
                 leading:Icon(Icons.logout,
                   size: 15.0,
                 color: Colors.red,),
                 title: Text("Log Out",
                   style: TextStyle(
                     fontWeight: FontWeight.w700,
                     color: Colors.red
                   ),),
                 trailing: Icon(Icons.keyboard_arrow_right,
                   size: 18,),
                 tileColor: Colors.grey.shade50,
                 onTap: (){
                   Navigator.pushNamed(context, '/login');
                 },
               ),
             ],
           ),
         )
            ],
          ),
      ),
      );



  }
}
