import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session6_task_nti/core/constant/app_icons.dart';
import 'package:session6_task_nti/core/constant/app_image.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 277,
            width: double.infinity,
            child: Image.asset(
              AppImage.imageScreen,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 24),
          CustomCard(
            icon: Icons.person,
            title: "Update Profile",
          ),
          SizedBox(height: 17),
          CustomCard(
            icon: Icons.history,
            title: "History",
          ),
          SizedBox(height: 27),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<Widget>(
              isExpanded: true,
              focusColor: Colors.white,
              dropdownColor: Colors.white,
              hint: Text(
                "Selected Option",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              icon: SvgPicture.asset(
                AppIcons.arrowDown,
              ),
              underline: SizedBox(),
              borderRadius: BorderRadius.circular(18),
              itemHeight: 63,
              items: [
                DropdownMenuItem(
                  value: Text("option1"),
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        AppImage.imageScreen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "Hello!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    subtitle: Text(
                      "Option 1",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: Text("option2"),
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        AppImage.imageScreen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "Hello!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    subtitle: Text(
                      "Option 2",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: Text("option3"),
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        AppImage.imageScreen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "Hello!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    subtitle: Text(
                      "Option 3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: Text("option4"),
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        AppImage.imageScreen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "Hello!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    subtitle: Text(
                      "Option 4",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.icon,
    required this.title,
  });
  final IconData? icon;

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        // leading: SvgPicture.asset(
        //   AppIcons.user,
        // ),
        leading: Icon(
          icon,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 14,
          weight: 0.5,
        ),
      ),
    );
  }
}
