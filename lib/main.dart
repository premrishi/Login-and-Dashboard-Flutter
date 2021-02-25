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
    );
  }
}