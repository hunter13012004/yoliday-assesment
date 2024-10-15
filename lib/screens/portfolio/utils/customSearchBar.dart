import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customsearchbar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  const Customsearchbar(
      {super.key, required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffDF5532),
                    borderRadius: BorderRadius.circular(16.r)),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
          hintText: 'Search a project',
          hintStyle: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp),
          border: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(12.r))),
    );
  }
}
