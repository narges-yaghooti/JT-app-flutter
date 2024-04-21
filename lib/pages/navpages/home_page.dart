import 'package:flutter/material.dart';
import 'package:travel/widget/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover"),
          ),
          SizedBox(height: 40),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(right: 20,left: 20),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                controller: _tabController,
                isScrollable: true,
                tabs: [
                  Tab(text: "Place"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Text("Hello"),
                Text("threre"),
                Text("Bye"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
