import 'package:flutter/material.dart';
import 'package:my_wellness_app/page/Video.dart';
import 'package:my_wellness_app/page/article.dart';
import 'package:my_wellness_app/page/doctor.dart';
import 'package:my_wellness_app/page/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab =0;
  final List<Widget> screens =[
    Profile(),
    Video(),
    Article(),
    Doctor()

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen =Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:PageStorage(
          child:currentScreen,
          bucket:bucket,
        ),
      // floatingActionButton:FloatingActionButton(
      //   child:Icon(Icons.add),
      //   onPressed: () {},
      // ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape:CircularNotchedRectangle(),
          notchMargin: 20,
          child:Container(
            height:60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                        minWidth: 90,
                        onPressed: (){
                          setState(() {
                            currentScreen=Profile();
                            currentTab = 0;
                          });
                        },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // CircleAvatar(
                          //   backgroundColor: Colors.white,
                          //   child: CircleAvatar(
                          //     backgroundColor: Color(0xffE6E6E6),
                          //     radius: 15,
                          //     child: Icon(
                          //       Icons.person,
                          //       color:currentTab==0?Colors.blue:Colors.grey,
                          //     ),
                          //   ),
                          // ),
                          Icon(
                            Icons.person,
                            color:currentTab==0?Colors.blue:Colors.grey,
                          ),

                          Text(
                            'Profile',
                            style:TextStyle(color: currentTab==0?Colors.blue:Colors.grey),
                          ),

                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      onPressed: (){
                        setState(() {
                          currentScreen=  Video();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_label,
                            color:currentTab==1?Colors.blue:Colors.grey,
                          ),
                          Text(
                            'Video',
                            style:TextStyle(color: currentTab==1?Colors.blue:Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      onPressed: (){
                        setState(() {
                          currentScreen=Article();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.article,
                            color:currentTab==3?Colors.blue:Colors.grey,
                          ),

                          Text(
                            'Article',
                            style:TextStyle(color: currentTab==3?Colors.blue:Colors.grey),
                          ),

                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      onPressed: (){
                        setState(() {
                          currentScreen=  Doctor();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color:currentTab==4?Colors.blue:Colors.grey,
                          ),
                          Text(
                            'ZenHelp',
                            style:TextStyle(color: currentTab==4?Colors.blue:Colors.grey),
                          ),
                        ],
                      ),
                    )

                  ],

                ),

                //Right Tab Bar icons
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     MaterialButton(
                //       minWidth: 40,
                //       onPressed: (){
                //         setState(() {
                //           currentScreen=Article();
                //           currentTab = 3;
                //         });
                //       },
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //
                //           Icon(
                //             Icons.article,
                //             color:currentTab==3?Colors.blue:Colors.grey,
                //           ),
                //
                //           Text(
                //             'Article',
                //             style:TextStyle(color: currentTab==3?Colors.blue:Colors.grey),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //     MaterialButton(
                //       minWidth: 40,
                //       onPressed: (){
                //         setState(() {
                //           currentScreen=  Doctor();
                //           currentTab = 4;
                //         });
                //       },
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Icon(
                //             Icons.dashboard,
                //             color:currentTab==1?Colors.blue:Colors.grey,
                //           ),
                //           Text(
                //             'ZenHelp',
                //             style:TextStyle(color: currentTab==1?Colors.blue:Colors.grey),
                //           ),
                //         ],
                //       ),
                //     )
                //
                //   ],
                //
                // )
              ],
            )
          )
        ),
    );
  }
}
