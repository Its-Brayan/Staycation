import 'package:flutter/material.dart';

class ManageNotifications extends StatefulWidget {
  const ManageNotifications({super.key});

  @override
  State<ManageNotifications> createState() => _ManageNotificationsState();
}

class _ManageNotificationsState extends State<ManageNotifications> {
  bool checkswitch = false;
  bool checkswitch1 = false;
  bool checkswitch2 = false;
  bool checkswitch3 = false;
  bool checkswitch4 = false;
  bool checkswitch5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Notification",
      style: TextStyle(
        color: Color(0xFF01226F)
      ),),
      centerTitle: true,

    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 160, 0),
                      child: Text("SPECIAL TIPS AND OFFERS",

                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),),
                    ),
                    ListTile(
                      title: Text("Push Notification",
                      style: TextStyle(
                        color: Color(0xFF01226F),
                      ),),
                      trailing: Switch(

                          value: checkswitch,
                          onChanged: (bool newval){
                            setState(() {
                              checkswitch = newval;
                            });
                          },

                      ),
                    ),

                    ListTile(
                      title: Text("Email",
                        style: TextStyle(
                          color: Color(0xFF01226F),
                        ),),
                      trailing: Switch(

                        value: checkswitch1,
                        onChanged: (bool newval){
                          setState(() {
                            checkswitch1 = newval;
                          });
                        },

                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 280,0),
                      child: Text("ACTIVITY",
                      style: TextStyle(
                        color: Colors.grey.shade400
                      ),
                      ),
                    ),
                    ListTile(
                      title: Text("Push Notification",
                      style: TextStyle(
                        color: Color(0xFF01226F),
                      )
                      ),
                      trailing: Switch(value: checkswitch2, onChanged:(newval){
                        setState(() {
                          checkswitch2 = newval;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text("Email",
                          style: TextStyle(
                            color: Color(0xFF01226F),
                          )
                      ),
                      trailing: Switch(value: checkswitch3, onChanged:(newval){
                        setState(() {
                          checkswitch3 = newval;
                        });
                      }),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 260,0),
                      child: Text("REMINDERS",
                        style: TextStyle(
                            color: Colors.grey.shade500
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Push Notification",
                          style: TextStyle(
                            color: Color(0xFF01226F),
                          )
                      ),
                      trailing: Switch(value: checkswitch4, onChanged:(newval){
                        setState(() {
                          checkswitch4 = newval;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text("Email",
                          style: TextStyle(
                            color: Color(0xFF01226F),
                          )
                      ),
                      trailing: Switch(value: checkswitch5, onChanged:(newval){
                        setState(() {
                          checkswitch5 = newval;
                        });
                      }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
