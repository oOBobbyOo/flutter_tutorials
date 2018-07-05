import 'package:flutter/material.dart';

class Tabdemo extends StatefulWidget {
  @override
  _TabdemoState createState() => _TabdemoState();
}

class _TabdemoState extends State<Tabdemo> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new Tab1(),
          new Tab2(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.face),
              text: 'tab1',
            ),
            new Tab(
              icon: new Icon(Icons.access_alarm),
              text: 'tab2',
            ),
          ],
        ),
      ),
    );
  }
}

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('tab1'),
    );
  }
}

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('tab2'),
    );
  }
}
