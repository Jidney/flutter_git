import 'package:flutter/material.dart';

 void main(){

    runApp(const MyApp());//Application
}

      class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
        Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(primarySwatch:Colors.purple),

          color: Colors.blue,
          debugShowCheckedModeBanner: false,

          home:HomeActivity());
       }
    }
    class HomeActivity extends StatelessWidget{
   const HomeActivity({super.key});

   MySnackBar(message,context){

     return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content:Text(message))
     );
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Jidney's Closet"),
         titleSpacing: 0,
         centerTitle: false,
          toolbarHeight: 60,
          toolbarOpacity: 1,
          elevation: 2,
         backgroundColor: Colors.purpleAccent,
        actions: [
          IconButton(onPressed: (){MySnackBar ("shop", context);}, icon: Icon(Icons.shop)),
          IconButton(onPressed: (){MySnackBar("linked_camera_sharp", context);}, icon: Icon(Icons.linked_camera_sharp)),
          IconButton(onPressed: (){MySnackBar("search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("email", context);}, icon: Icon(Icons.email)),


        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add_a_photo),
        onPressed: (){
          MySnackBar("floating action button", context);
        },

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "category"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile")
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("Home", context);
          }
          if(index==1){
            MySnackBar("category", context);
          }
          if(index==2){
            MySnackBar("profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Picks For You")),
            ListTile(title: Text("Women"),leading: Icon(Icons.girl),),
            ListTile(title: Text("Men"),leading: Icon(Icons.man) ,),
            ListTile(title: Text("Kids"),leading: Icon(Icons.child_friendly),),
            ListTile(title: Text("New In"),leading: Icon(Icons.new_label),),
            ListTile(title: Text("Sale"),leading: Icon(Icons.card_giftcard),),
            ListTile(title: Text("Clothing"),leading: Icon(Icons.shopping_bag_outlined),),
            ListTile(title: Text("Dress"),leading: Icon(Icons.shopping_bag),),
            ListTile(title: Text("Shoes"),leading: Icon(Icons.snowshoeing_sharp),),

          ],
        ),
      ),
    );
  }

}

