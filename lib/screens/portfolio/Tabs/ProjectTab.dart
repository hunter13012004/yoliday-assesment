import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday/data/dummydata.dart';
import 'package:yoliday/model/portfolioModel.dart';
import 'package:yoliday/screens/portfolio/utils/customSearchBar.dart';
import 'package:yoliday/screens/portfolio/utils/portfolioTile.dart';

class Projecttab extends StatefulWidget {
  const Projecttab({super.key});

  @override
  State<Projecttab> createState() => _ProjecttabState();
}

TextEditingController searchcontroller = TextEditingController();
Dummydata dummydata = Dummydata();
List<Portfoliomodel> portdata = [];
List<Portfoliomodel> filtereddata = [];

Future<List<Portfoliomodel>> fetchData() async {
  final result = dummydata.PortfolioData;
  return result.map((m) => Portfoliomodel.fromJson(m)).toList();
}

class _ProjecttabState extends State<Projecttab> {
  @override
  void initState() {
    super.initState();
    finaldata(); // Fetch data on initialization
  }

  Future<void> finaldata() async {
    final List<Portfoliomodel> result = await fetchData();
    setState(() {
      portdata.addAll(result); // Update the state with fetched data
    });
  }

  void filterdata(String query) {
    if (query.isEmpty) {
      setState(() {
        filtereddata = portdata;
      });
    } else {
      setState(() {
        filtereddata = portdata
            .where((item) =>
                item.title!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: const Color(0xffDF5532),
          borderRadius: BorderRadius.circular(16.r),
        ),
        width: 104.w,
        height: 34.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            Text(
              'Filter',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Customsearchbar(
                onChanged: filterdata,
                controller: searchcontroller,
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ListView.builder(
                shrinkWrap: true, // Allows ListView to fit inside a Column
                physics:
                    const NeverScrollableScrollPhysics(), // Prevent scrolling of ListView
                itemCount: filtereddata.isEmpty
                    ? portdata.length
                    : filtereddata.length,
                itemBuilder: (context, index) {
                  final data = filtereddata.isNotEmpty
                      ? filtereddata[index]
                      : portdata[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Portfoliotile(
                      title: data.title ?? '',
                      subtitle: data.Subtitle ?? '',
                      content: data.content ?? '',
                      imagepath: data.image ?? '',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
