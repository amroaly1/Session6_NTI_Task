import 'dart:developer';

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> country = [
      "cairo",
      "sharqia",
      "mansoura",
    ];
    int i = 0;

    // List<DropdownMenuItem<int>> listofDropDownMenuItem = [
    //   DropdownMenuItem(
    //     value: 1,
    //     child: Text("1"),
    //   ),
    //   DropdownMenuItem(
    //     value: 1,
    //     child: Text("1"),
    //   ),
    //   DropdownMenuItem(
    //     value: 1,
    //     child: Text("1"),
    //   ),
    //   DropdownMenuItem(
    //     value: 1,
    //     child: Text("1"),
    //   ),
    // ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: SizedBox(
                  height: 100,
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      log("onFieldSubmitted : $value");
                    },
                    onChanged: (String value) {
                      log("onChanged : $value");
                    },
                    onSaved: (newValue) {
                      log("onChanged : $newValue");
                    },
                    decoration: InputDecoration(
                      // semanticCounterText: "semanticCounterText",
                      filled: true,
                      fillColor: Colors.cyanAccent,
                      // errorText: "error",
                      errorStyle: TextStyle(
                        color: Colors.red,
                      ),
                      // isDense: true,
                      // isCollapsed: true,
                      hintText: "enter your name",
                      labelText: "your name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      border: outlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 5,
                        ),
                      ),
                      enabled: true,
                      focusColor: Colors.yellow,
                      focusedBorder: outlineInputBorder(
                        color: Colors.blue,
                        width: 2,
                      ),
                      errorBorder: outlineInputBorder(
                        color: Colors.red,
                        width: 3,
                      ),
                      focusedErrorBorder: outlineInputBorder(
                        color: Colors.red,
                        width: 3,
                      ),
                      prefix: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "data",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      suffix: Icon(Icons.abc_outlined),
                      suffixIcon: Icon(Icons.abc_outlined),
                      icon: Icon(
                        Icons.data_saver_off_outlined,
                      ),
                      // prefixText: "prefixText",
                      // suffixText: "suffixText",

                      counter: Icon(Icons.countertops),
                      disabledBorder: outlineInputBorder(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 6,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  side: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text(
                  "Click",
                  // style: TextStyle(
                  //   // color: Colors.white,
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
              ),
              MaterialButton(
                color: Colors.blue,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                onPressed: () {},
                child: Text("click"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 6,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  side: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Colors.blue,
                //   elevation: 6,
                //   foregroundColor: Colors.white,
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 50,
                //     vertical: 10,
                //   ),
                //   side: BorderSide(
                //     color: Colors.black,
                //     width: 3,
                //   ),
                // ),
                onPressed: () {},
                child: Icon(
                  Icons.ac_unit,
                ),
                // child: Text(
                //   "click",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 6,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  side: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                onPressed: () {},
                // icon: Icon(Icons.ac_unit),
                icon: Text(
                  "click",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: 250,
                child: DropdownButton<int>(
                  // value: 1,
                  underline: SizedBox(),
                  dropdownColor: Colors.white,
                  isExpanded: true,
                  hint: Text("select value"),
                  focusColor: Colors.white,
                  iconEnabledColor: Colors.blue,
                  iconDisabledColor: Colors.red,
                  menuWidth: 200,

                  items: country.map(
                    (String value) {
                      i++;
                      return DropdownMenuItem(
                        value: i,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    log(value.toString());
                  },
                  // onChanged: null,
                ),
              ),
              Container(
                width: 800,
                height: 1000,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png",
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({Color? color, double? width}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Colors.grey,
        width: width ?? 1.5,
      ),
    );
  }
}
