import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session6_task_nti/core/constant/app_icons.dart';

class SecondMainScreen extends StatelessWidget {
  const SecondMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.arrowBack,
            // width: 24,
            // height: 24,
            // fit: BoxFit.scaleDown,
            semanticsLabel: "Back",
          ),
        ),
        title: const Text(
          "Edit Task",
          style: TextStyle(
            fontFamily: "Lexend Deca",
            fontSize: 19,
            color: Color(0xff24252C),
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsetsDirectional.only(
              start: 9,
              end: 9,
              top: 5,
              bottom: 5,
            ),
            margin: EdgeInsetsDirectional.only(end: 10),
            decoration: BoxDecoration(
              color: const Color(0xffE4312B),
              borderRadius: BorderRadius.circular(70),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppIcons.deleteIcon,
                ),
                SizedBox(width: 4),
                Text(
                  "Delete",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "In Progress",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Believe you can, and you're halfway there.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    icon: SvgPicture.asset(
                      AppIcons.homeTaskScreen2,
                    ),
                    border: outlineBorder(),
                    enabledBorder: outlineBorder(),
                    focusedBorder: outlineBorder(),
                    errorBorder: outlineBorder(),
                    labelText: "Task Group",
                    hintText: "Home",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xff24252C),
                      fontWeight: FontWeight.w200,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 9,
                      color: Color(0xff6E6A7C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // icon: SvgPicture.asset(
                    //   AppIcons.homeTaskScreen2,
                    // ),
                    border: outlineBorder(),
                    enabledBorder: outlineBorder(),
                    focusedBorder: outlineBorder(),
                    errorBorder: outlineBorder(),
                    labelText: "Task Name",
                    hintText: "Grocery Shopping App",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xff24252C),
                      fontWeight: FontWeight.w200,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 9,
                      color: Color(0xff6E6A7C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  maxLines: null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // icon: SvgPicture.asset(
                    //   AppIcons.homeTaskScreen2,
                    // ),
                    border: outlineBorder(),
                    enabledBorder: outlineBorder(),
                    focusedBorder: outlineBorder(),
                    errorBorder: outlineBorder(),

                    labelText: "Description",
                    hintText:
                        "Go for grocery to buy some products. \nGo for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy \n some products.",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xff24252C),
                      fontWeight: FontWeight.w200,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 9,
                      color: Color(0xff6E6A7C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  showDatePicker(
                    context: context,
                    firstDate: DateTime(DateTime.now().year,
                        DateTime.now().month, DateTime.now().day),
                    initialDate: DateTime(DateTime.now().year,
                        DateTime.now().month, DateTime.now().day),
                    lastDate: DateTime(DateTime.now().year + 100,
                        DateTime.now().month, DateTime.now().day),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.date_range_sharp,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Star Date",
                            style: TextStyle(
                              color: Color(0xff6E6A7C),
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "01 May, 2022",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "10:00 am",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.date_range_sharp,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End Date",
                          style: TextStyle(
                            color: Color(0xff6E6A7C),
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "01 May, 2022",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "10:00 am",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Color(0xff149954),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "Mark as Done",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color: Color(0xff149954),
                      )),
                ),
                child: Text(
                  "Update",
                  style: TextStyle(
                    color: Color(0xff149954),
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
