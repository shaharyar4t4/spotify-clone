import 'package:flutter/material.dart';
import 'package:spotify/core/app_color/color.dart';
import 'package:spotify/core/services/category_services.dart';
import 'package:spotify/core/services/music_services.dart';
import 'package:spotify/features/models/category.dart';
import 'package:spotify/features/models/music.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  Widget createCategory( Category category){
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row( 
        children: [
          Image.network(category.imageUrl, fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(category.name, style: TextStyle(color: Colors.white),),

          )
        ],
      ),
    );
  }

  List<Widget>createListofCategories(){
    List<Category> categoryList = CategoryOpearation.getCategories();
    List<Widget> categories= categoryList.map((Category category) => createCategory(category)).toList();
    return categories;
  }
   
  Widget createMusic(Music music){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network(music.imageUrl, fit: BoxFit.cover,)),
          Text(music.name, style: TextStyle(color: Colors.white),),
          Text(music.desc, style: TextStyle(color: Colors.white70),),
        ],
      ),
    );
  }
  Widget createMusicList(String label){
    List<Music> musicList = MusicOperation.getMusics();
    return Container(
      height: 200,
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index){
          return createMusic(musicList[index]);
      }, itemCount: musicList.length,),
    );
  }

  Widget createGrid(){
    return Container(
      height: 400,
    
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 5/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListofCategories(),),
    );
  }

  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message, style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.settings, color: Colors.white,),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey.shade300, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.3],
            ),
          ),
          child: Column(children: [
            createAppBar("Good Morning"),
            const SizedBox(height: 20,),
            createGrid(),
            createMusicList("Made for You"),
          ],),
        ),
      ),
    );
  }
}
