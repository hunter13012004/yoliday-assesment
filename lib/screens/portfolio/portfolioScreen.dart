import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday/screens/portfolio/Tabs/ProjectTab.dart';
import 'package:yoliday/screens/portfolio/Tabs/achievementTab.dart';
import 'package:yoliday/screens/portfolio/Tabs/savedTab.dart';
import 'package:yoliday/screens/portfolio/Tabs/sharedTab.dart';

class Portfolioscreen extends StatefulWidget {
  const Portfolioscreen({super.key});

  @override
  State<Portfolioscreen> createState() => _PortfolioscreenState();
}

class _PortfolioscreenState extends State<Portfolioscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Portfolio',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag_rounded,
                    size: 24.r,
                    color: const Color(0xffDF5532),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 24.r,
                    color: const Color(0xffDF5532),
                  ))
            ],
            // bottom: const TabBar(tabs: [
            //   Tab(
            //     text: 'Project',
            //   ),
            //   Tab(
            //     text: 'Saved',
            //   )
            // ]),
          ),
          body: Column(
            children: [
              TabBar(
                  physics: const AlwaysScrollableScrollPhysics(),
                  labelColor: const Color(0xffDF5532),
                  indicatorColor: const Color(0xffDF5532),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: Text(
                        'Project',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Saved',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Shared',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Achievement',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ]),
              const Expanded(
                child: TabBarView(
                  children: [
                    Projecttab(),
                    Savedtab(),
                    Sharedtab(),
                    Achievementtab()
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
