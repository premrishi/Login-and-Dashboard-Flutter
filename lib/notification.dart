import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() async => {
          WidgetsFlutterBinding.ensureInitialized(),

          await SystemChrome.setPreferredOrientations(
              [DeviceOrientation.portraitUp]),
runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  )
)
};
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: 0, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.dashboard),
           title: new Text('Dashboard', style: GoogleFonts.varelaRound(),),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.chat),
           title: new Text('Live help chat', style: GoogleFonts.varelaRound(),),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.notifications),
           title: Text('Notifications', style: GoogleFonts.varelaRound(),)
         )
       ],
     ),
    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
      Container(
        child: Column(
          children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width,
             height: 86,
             decoration: BoxDecoration(
               color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
             ),
             child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Notification", style: GoogleFonts.varelaRound(color: Colors.black, fontSize: 30),),
                  ],
                ),
              ),
              ]
          ),
             ),
           ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.purple[900],
              Colors.purple[600],
              Colors.purple[300]
            ]
          )
        ),
      ),
      Align(alignment: Alignment(0, 0.63),
       child: Container(
         height: 490,
         width: 350,
        decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(12)),
                 color:Colors.white,

               ),
               )
        ),  
      ],  
    ),
    );
  }
}