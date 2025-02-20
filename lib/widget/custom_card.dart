import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.icon,
    required this.title,
    this.isFuture = false,
    this.isDone = false,
  });
  final IconData icon;
  final String title;
  final bool isFuture;

  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 334,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: isFuture
                      ? Color(0xffF3F5F4)
                      : isDone
                          ? Color(0xff149954)
                          : Color(0xffCEEBDC),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Text(
                  isFuture
                      ? "Future"
                      : isDone
                          ? "Done"
                          : "In Progress",
                  style: TextStyle(
                    color: isDone ? Colors.white : Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Go to supermarket to buy some milk & eggs",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
