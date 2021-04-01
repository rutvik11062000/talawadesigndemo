import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/members.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/taskScreen.dart';
import 'package:talawadesigndemo/UI/wrapperUI.dart';

class SubscribedEvent extends StatefulWidget {
  final String title;
  SubscribedEvent({Key key, this.title}) : super(key: key);

  @override
  _SubscribedEventState createState() => _SubscribedEventState();
}

class _SubscribedEventState extends State<SubscribedEvent>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Task'),
    Tab(text: 'Attendees'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WrapperScaffold(
      Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: myTabs,
          ),
          title: Text(widget.title),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [TaksScreen(), Attendees()],
        ),
      ),
    );
  }
}
