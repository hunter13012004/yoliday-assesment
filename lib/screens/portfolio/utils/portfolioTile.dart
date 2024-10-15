import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Portfoliotile extends StatelessWidget {
  final String imagepath;
  final String title;
  final String subtitle;
  final String content;
  const Portfoliotile(
      {super.key,
      required this.imagepath,
      required this.title,
      required this.subtitle,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 110.h,
      width: MediaQuery.of(context).size.width.w,
      child: Row(
        children: [
          Image.asset(imagepath), // Your image
          SizedBox(width: 10.w),
          Expanded(
            // Use Expanded to take up remaining space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Roboto',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w100,
                            color: const Color(0xff303030),
                          ),
                        ),
                        Text(
                          content,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0xff9E95A2),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 26.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(colors: [
                          Color(0xffF39519),
                          Color(0xffFFCD67),
                        ]),
                      ),
                      child: Center(
                        child: Text(
                          'A',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ), // Text positioned at the end
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
