import 'package:appteat/HomePage/foogpagebody.dart';
import 'package:appteat/Widgets/BigTextApp.dart';
import 'package:appteat/Widgets/SmallTextApp.dart';
import 'package:appteat/constants/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorB,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      BigTextApp(
                        text: "Bangladeesh",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallTextApp(
                            text: 'Narsingdi',
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.colorA),
                      height: 45,
                      width: 45,
                      child: const Icon(
                        Icons.search,
                        color: AppColors.colorC,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Expanded(
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(), child: Foodpagebody())),
          ],
        ),
      ),
    );
  }
}
