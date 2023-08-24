import 'package:flutter/material.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/task1/screens/home/widgets/home_widget.dart';
import 'package:tasks/task1/screens/home/widgets/profile.dart';
import 'package:tasks/utils/utilis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with SingleTickerProviderStateMixin {
  PageController tabController = PageController();

  late TabController controller;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    controller = TabController(length: (4), vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              padding: const EdgeInsets.all(4.0),
              labelPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: false,
              indicatorPadding: const EdgeInsets.only(bottom: 0),
              unselectedLabelStyle: const TextStyle(
                color: greyColor,
              ),
              labelStyle: const TextStyle(
                color: mainColor,
              ),
              unselectedLabelColor: Colors.grey,
              labelColor: mainColor,
              onTap: (s) {

                setState(() {});
              },
              indicatorColor: mainColor,
              controller: controller,
              tabs: [
                Tab(
                  child: TextWidget(
                    title: 'Home',
                    fontSize: 12,
                    color: mainColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Tab(
                  child: TextWidget(
                    title: 'Profile',
                    fontSize: 12,
                    color: mainColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),


              ],
            ),
           20.ph,
             Expanded(
               child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: controller,
                  children: const [
                    HomeWidget(),
                    ProfileWidget(),

                  ],
                ),
             ),

          ],
        ),
      ),
    );
  }
}
