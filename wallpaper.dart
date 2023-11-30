import 'package:flutter/material.dart';

class wallpaper extends StatefulWidget {
  const wallpaper({super.key});

  @override
  State<wallpaper> createState() => _wallpaperState();
}

class _wallpaperState extends State<wallpaper> {

  
  int index=0;
  List image=[
  "https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://wallpaperaccess.com/full/261916.jpg",
  "https://th.bing.com/th/id/R.18b33fcc430eea02ce67c22b3a702525?rik=b4dBM65%2bUFsO4Q&pid=ImgRaw&r=0",
  "https://www.dogexpress.in/wp-content/uploads/2014/09/HUGE-DOG2.jpg",
  "https://th.bing.com/th/id/OIP.PxF_sLu5_91U8iA3ckaFowHaLI?&rs=1&pid=ImgDetMain",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Changing Background Wallpaper",),
        ),
        floatingActionButton: SizedBox(
          width: 100,
          height: 100,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
               padding: MaterialStatePropertyAll(EdgeInsets.all(10)),

            ),
            onPressed: () {
              setState(() {

                if(index==(image.length-1))
                {
                  index=0;
                }
                else
                  index++;
                  
              });
            },
            child: Text("WallPaper ${index}",textAlign: TextAlign.center,),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              
              image: DecorationImage(image: NetworkImage(image[index]),
              fit: BoxFit.cover,
              ),
            ),
          // child: ,
         

        ),
      )
    );
  }
}