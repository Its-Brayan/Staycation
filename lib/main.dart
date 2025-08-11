import 'package:flutter/material.dart';
import 'package:stay/pages/profile.dart';
import 'package:stay/pages/signup.dart';
import 'package:stay/pages/login.dart';
import 'package:stay/pages/home.dart';
import 'package:stay/pages/favourite.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/login',
      routes: {
    '/':(context) => mainNavigation(),
     '/login':(context)=>Login(),
        '/signup' :(context)=>Signup(),
        '/profile':(context) =>Profile(),
        '/Home':(context)=>Homepage(),
        '/favourites':(context) =>Favourite()
    },
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),


    );

  }

}
class mainNavigation extends StatefulWidget {
  const mainNavigation({super.key});

  @override
  State<mainNavigation> createState() => _mainNavigationState();
}

class _mainNavigationState extends State<mainNavigation> {
  int selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Homepage(),
    Favourite(),
    Profile(),


  ];
  void onItemTapped(index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: _pages[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: 'Home',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.bookmark_add),
              label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile"),

        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: onItemTapped,
      ),

    );
  }
}

