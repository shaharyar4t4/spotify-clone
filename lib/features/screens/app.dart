import 'package:flutter/material.dart';
import 'package:spotify/core/app_color/color.dart';
import 'package:spotify/features/models/music.dart';
import 'package:spotify/features/screens/home.dart';
import 'package:spotify/features/screens/search.dart';
import 'package:spotify/features/screens/your_liberay.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
 
  var Tab = [];
  int currentTabIndex = 0;
  Music? music;


 Widget minplayer(Music? music){
  this.music = music;
  setState(() {
    
  });
    if(music==null){
      return SizedBox();
    }
    Size deviceSize= MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500), 
      color: Colors.blueGrey,
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(music.imageUrl, fit: BoxFit.cover),
          Text(music.name, style: TextStyle(color: Colors.white, fontSize: 20),),
          IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow, color: Colors.white,)),
        ],
      ),

    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tab= [Home(minplayer), Search(), YourLiberay()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tab[currentTabIndex],

      //body --> show the current tab page

      // Navigation Bar
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         minplayer(music),  
        BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (currentIndex) {
            print("Current page index <--- $currentIndex");
            currentTabIndex = currentIndex;
            setState(() {});
          },
          selectedItemColor: navigation_selected_item,
          unselectedItemColor: navigation_unselected_item,
          backgroundColor: navigation_bar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: "Your Library",
            ),
          ],
        ),],
      ),
    );
  }
}
