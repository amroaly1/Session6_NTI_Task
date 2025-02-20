import 'package:flutter/material.dart';
import 'package:session6_task_nti/widget/custom_card.dart';
import 'package:session6_task_nti/widget/custom_card_option.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F5F4),
      appBar: AppBar(
        backgroundColor: const Color(0xffF3F5F4),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 15,
        ),
        title: const Text(
          "Today Tasks",
          style: TextStyle(
            fontSize: 19,
            color: Color(0xff24252C),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsetsDirectional.only(
              start: 9,
              end: 13,
              top: 5,
              bottom: 5,
            ),
            margin: EdgeInsetsDirectional.only(end: 10),
            decoration: BoxDecoration(
              color: const Color(0xffCEEBDC),
              borderRadius: BorderRadius.circular(70),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  size: 17,
                ),
                SizedBox(width: 5),
                Text(
                  "Add",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCardOptions(
                isChoice: true,
                text: "All",
              ),
              CustomCardOptions(
                text: "Future",
              ),
              CustomCardOptions(
                text: "Missed",
              ),
              CustomCardOptions(
                text: "Done",
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Text(
                  "Results",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff24252C),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff149954).withValues(
                      alpha: 0.15,
                    ),
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Text(
                    "4",
                    style: TextStyle(
                      color: Color(0xff149954),
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17),
          Column(
            spacing: 10,
            children: [
              CustomCard(
                icon: Icons.work,
                title: "Work Task",
                isFuture: true,
              ),
              CustomCard(
                icon: Icons.work,
                title: "Work Task",
                isFuture: true,
              ),
              CustomCard(
                icon: Icons.home,
                title: "Home Task",
                isDone: true,
              ),
              CustomCard(
                icon: Icons.person,
                title: "Personal Task",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
