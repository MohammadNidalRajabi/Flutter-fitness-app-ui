
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:myhome(),
    );

  }
  
}
/*
class myhome extends StatelessWidget {
  
  const myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var x=0;
    return Scaffold(
      appBar: AppBar(

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
        hoverColor: Colors.blueAccent,
        splashColor: Colors.amberAccent,
      elevation: 10,
        onPressed: () {
        

      },),
      drawer: Drawer(),
      body: Text("data"),
    );
  }
}
*/
// ignore: camel_case_types
class myhome extends StatefulWidget {
  const myhome({ Key? key }) : super(key: key);

  @override
  State<myhome> createState() => _myhomeState();
}

// ignore: camel_case_types
class _myhomeState extends State<myhome> {
  
  GlobalKey<ScaffoldState> scaffold=new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    
    
    
   
    
  
    return DefaultTabController(
      length: 3,
     child: 
    Scaffold(
      key: scaffold,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Color(0xff4B4B87),), onPressed: () {  },),
        title: Text("STATS",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff4B4B87),
        ),
        
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 3,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor:Color(0xff6161A8),
        unselectedItemColor: Color(0xffA3A3CC),
        unselectedIconTheme: IconThemeData(
          color: Color(0xffA3A3CC),
          
        ),
        selectedIconTheme:IconThemeData(color:Color(0xff6161A8)),
        selectedLabelStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        color: Color(0xff6161A8),
        
      ),
        items: [
          BottomNavigationBarItem(
            
            icon: SvgPicture.asset("icons/profile.svg",
          height: 30,
          width: 30,
          color: Color(0xff8989BE),
          ),
          label: "Profile",
          
          ),
          BottomNavigationBarItem(icon: SvgPicture.asset("icons/stats.svg",
          height: 30,
          width: 30,
          color: Color(0xff8989BE),
          ),
          label: "Stats",
          
          ),
          BottomNavigationBarItem(icon: SvgPicture.asset("icons/reward.svg",
          height: 30,
          width: 30,
          color: Color(0xff8989BE),
          ),
          label: "Rewards",
          
          ),
          BottomNavigationBarItem(icon: SvgPicture.asset("icons/goal.svg",
          height: 30,
          width: 30,
          color: Color(0xff8989BE),
          ),
          label: "Goal",
          
          ),
        
      ]),
     
      body: Padding(padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color:Color(0xff4B4B87).withOpacity(.2),
              
            ),
          ),
          TabBar(
            unselectedLabelColor: Color(0xff4B4B87).withOpacity(.2),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff4B4B87),
            ),
            
            tabs: [
            Tab(text: "Day",),
            Tab(text: "Week",),
            Tab(text: "Month",),
            

          ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20, 
            crossAxisSpacing: 20,
            children: [
              buildGridViewCard(title: "Heart Rate",
              color: Color(0xffFF6968),
              icon: 'icons/heart-rate.svg',
              dis: "80 - 20\nhealthy",
              lable1: "120 ",
              lable2: " bpm",
              anccolor: Colors.red[200],


              ),
              buildGridViewCard(title: "Sleep",
              color: Color(0xff7A54FF),
              icon: 'icons/sleep.svg',
              dis: "80 - 20\nhealthy",
              lable1: "8 h ",
              lable2: " 42 m",
              anccolor: Colors.white54,


              ),
              buildGridViewCard(title: "Energe Burn",
              color: Color(0xffFF8F61),
              icon: 'icons/heart-rate.svg',
              dis: "80 - 20\nhealthy",
              lable1: "582 ",
              lable2: " Kacl",
              anccolor: Colors.orange,


              ),
              buildGridViewCard(title: "Steps",
              color: Color(0xff2AC3FF),
              icon: 'icons/steps.svg',
              dis: "Daily Gols\n25,000",
              lable1: "16850 ",
              lable2: "",
              anccolor: Color(0xffADE8FF),


              ),
              buildGridViewCard(title: "Running",
              color: Color(0xff2AC3FF),
              icon: 'icons/running.svg',
              dis: "Daily Gols\n18Km",
              lable1: "5.3 ",
              lable2: "Km",
              anccolor: Color(0xffADE8FF),


              ),
              buildGridViewCard(title: "Cycling",
              color: Color(0xff96DA45),
              icon: 'icons/cycling.svg',
              dis: "Daily Gols\n25,000",
              lable1: "25 km ",
              lable2: "",
              anccolor: Color(0xffD8F2BB),


              ),
              buildGridViewCard(title: "Heart Rate",
              color: Color(0xffFF6968),
              icon: 'icons/heart-rate.svg',
              dis: "80 - 20\nhealthy",
              lable1: "120 ",
              lable2: " bpm",
              anccolor: Colors.red[200],


              ),
              buildGridViewCard(title: "Sleep",
              color: Color(0xff7A54FF),
              icon: 'icons/sleep.svg',
              dis: "80 - 20\nhealthy",
              lable1: "8 h ",
              lable2: " 42 m",
              anccolor: Colors.white54,


              ),
              

            ],
            
            ),

          
          ),
        ],
      ),
      

      
      ),
    ),
    
    
    );
  }
  Widget buildGridViewCard(
    {String? title,
    String? icon,
    String? lable1,
    String? lable2,
    String? dis,
    Color? color,
    Color? anccolor
    })
  {
    return Container(
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.white60,

              ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text(lable1!,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    


                  ),),
                  Text(lable2!,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    


                  ),),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(dis!,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white54,
                  ),)
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: -12,
          right: -9,
          child: 
        CircleAvatar(
          radius: 32,
          backgroundColor: anccolor!.withOpacity(.7),
          child: SvgPicture.asset(
        icon!,
          width: 30,
          height: 30,
          color: Colors.white54,
            ),
          

        )
        ),
      ]),
    );
  }
  
}