import 'package:flutter/material.dart';
import 'package:nyumbani/base/drawer.dart';
import 'package:nyumbani/pages/home/home_page.dart';
import 'package:nyumbani/utils/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
   DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();

}

class _DashboardPageState extends State<DashboardPage> {

  int  _selectedIndex = 0;
  List _pages = [
    // Container(child: Center(child: Text("Home 1"),),),
    HomePage(),
    Container(child: Center(child: Text("Favourite"),),),
    Container(child: Center(child: Text("Latest"),),),
  ];

  void onTapNav(int index){
    setState(() {
      // widget.selectedIndex = index;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.mainColor,
        elevation: 0,
        ///profile pic
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Nyumbani",
                style: GoogleFonts.tangerine(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: ConstantColors.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )

      ),

      body: _pages[_selectedIndex],
      drawer:CustomDrawer(),

      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ConstantColors.mainColor,
          unselectedItemColor: ConstantColors.secondaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: _selectedIndex,
          onTap: onTapNav,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favourite"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.new_releases),
                label: "Latest"
            ),
          ]
      ),
    );
  }
}
