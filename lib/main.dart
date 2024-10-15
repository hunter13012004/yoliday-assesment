import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday/screens/Home/BottomNavBar/bottomBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 890),
        minTextAdapt: true,
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Bottombar(),
            ));
  }
}
