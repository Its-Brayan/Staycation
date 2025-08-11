import 'package:flutter/material.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(

       
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35.0, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScUIAcXgRaNDVvwWAkLcM5twP2KbyCMjPaqg&s",
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,)
                ),
              ),
             SizedBox(height: 14),
              TextFormField(
               decoration: InputDecoration(
                 border:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0),
                 ),
                 ),
                 labelText: "Fullname",
               ),

              ),
              SizedBox(height: 14.0),
              TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0),
                    ),
                  ),
                  labelText: "Email"
                ),
              ),
              SizedBox(height: 14.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)
                    ),
                  ),
                  labelText: "Phone Number",
                ),
              ),
              SizedBox(height: 14.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0),
                    ),
                  ),

                  labelText: "GOVERNMENT ID",
                ),
              )
            ],
          ),
        ),
      ),

    ),
      bottomNavigationBar:Padding(padding: EdgeInsets.fromLTRB(16,0, 16, 50),
      child: ElevatedButton(onPressed: (){}, child:Text("Done",
      style: TextStyle(color: Color(0xFF01226F)
      ),
      ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade100,
        ),
    ),
    ),

    );
  }
}
