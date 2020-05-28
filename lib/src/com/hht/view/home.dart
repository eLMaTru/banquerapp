import 'package:flutter/material.dart';

import 'botes_view.dart';
import 'result_view.dart';
import 'widgets/main_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectPagesIndex = 0;

  List<Widget> pages = [resultView(), BotesView(),BotesView()];

  @override
  Widget build(BuildContext context) {
    final appBar = buildAppBar();
    final bottomBar = setBottonNavigationBar();

    return Scaffold(
        appBar: appBar,
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.90,
              child: pages[selectPagesIndex]),
        ),
        bottomNavigationBar: SizedBox(
          child: bottomBar,
          height: (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.10,
        ));
  }

  void _selectPage(int index) {
    setState(() {
      selectPagesIndex = index;
    });
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("La Banquera"),
    );
  }

  static Widget resultView() {
    return ResultView();
  }

  BottomNavigationBar setBottonNavigationBar() {
    return BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: selectPagesIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list), title: Text("Results")),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              title: Text(
                "Botes",
              )),
             
               BottomNavigationBarItem(
              icon: Icon(Icons.directions_bike),
              title: Text(
                "Jugar (Delivery)",
              )),
        ]);
  }
}

//pages with navigation bottom
/*

int selectPagesIndex = 0;
  List<Widget> pages = [resultView(), BotesView()];

  @override
  Widget build(BuildContext context) {
    final appBar = buildAppBar();

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(child:  Container(
                  height: (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      1,
                  child: pages[selectPagesIndex]),),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.info), title: Text("Results")),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on), title: Text("Botes"))
          ]),
    );
  }

  void _selectPage(int index) {
    setState(() {
      selectPagesIndex = index;
    });
  }

  static Widget resultView() {
    return ResultView();
  }

*/

//page with taps
/*


DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar,
        body: TabBarView(children: <Widget>[
//first tab
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      1,
                  child: ResultView(),
                ),
              ],
            ),
          ),
//Second tab
          BotesView(),
        ]),
      ),
    );
  }
*/
