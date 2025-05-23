import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_app/services/getproductservice.dart';
import 'package:market_app/views/homeview.dart';

void main() {
  var getproduct = Getproduct().getProductservice();
  print(getproduct);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit
    (
      designSize: const Size(375, 812),
      minTextAdapt: true,
      
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
     
        home: Homeview(),
    ));
    
  }
}
