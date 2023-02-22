import 'package:flutter/material.dart';

class Drawerprofile extends StatefulWidget {
  const Drawerprofile({Key? key}) : super(key: key);

  @override
  State<Drawerprofile> createState() => _DrawerprofileState();
}

class _DrawerprofileState extends State<Drawerprofile> with SingleTickerProviderStateMixin {

  TabController? tabController;
   @override
  void initState() {
    // TODO: implement initState
     tabController= TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: "home",),
            Tab(text: "ss",),
            Tab(text: "bb",)
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       DrawerHeader(padding: EdgeInsets.all(0),
      //           decoration: BoxDecoration(color: Colors.blue),
      //           child: Container(
      //             width: 400,
      //             child: Column(
      //         children: [
      //           SizedBox(
      //             width: 40,
      //             height: 40,
      //           ),
      //             Container(
      //              height: 50,
      //                 width: 50,
      //               decoration: BoxDecoration(
      //                   shape: BoxShape.circle,
      //                   image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsxpJxFOtoiJhB9nvQsEsHXmgTAatQD7o7-Q&usqp=CAU"))),
      //             ),
      //             Text("Sarah Abs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
      //             Text("sarah@abs.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200))
      //         ],
      //       ),
      //           )),
      //       ListTile(
      //          leading: Icon(Icons.home),
      //         title: Text("Home"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.favorite_border),
      //         title: Text("Favourites"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.workspaces_outline),
      //         title: Text("Workflow"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.update),
      //         title: Text("Update"),
      //       ),
      //       SizedBox(
      //         width: 40,
      //         height: 40,
      //       ),
      //       Divider(
      //         height: 2,
      //         color: Colors.black,
      //         thickness: .2,
      //       ),
      //       SizedBox(
      //         width: 40,
      //         height: 40,
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_tree_outlined),
      //         title: Text("Update"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.notifications_none),
      //         title: Text("Notification"),
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(tabController!.index == 0){
            setState(() {
              print("page 1");
            });

          }
          if(tabController!.index == 1){
            setState(() {
              print("page 2");
            });

          }
          if(tabController!.index == 2){
            setState(() {
              print("page 3");
            });
          }


        },
        child:tabController!.index == 0?  Text("sceen 1"):tabController!.index == 1 ? Text("scrren 2"):tabController!.index == 2 ?Text("3"):Text(""),
      ),
      body: TabBarView(
        controller: tabController,
        children: [

          Container(
            child: Text("screen 1"),
          ),
          Container(
            child: Text("screen 2"),
          )
,
          Container(
            child: Text("screen 3"),
          )


        ],
      ),
    );
  }
}
