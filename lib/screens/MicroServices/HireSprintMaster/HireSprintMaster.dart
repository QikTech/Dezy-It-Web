import 'package:dezy_it_prasad_web/screens/MicroServices/HireSprintMaster/HireSprintMasterResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dezy_it_prasad_web/responsive.dart';
import 'package:flutter/widgets.dart';

import '../../GlobalAppBar.dart';
import '../../colors.dart';
import '../../typography.dart';
import '../HiringScreen.dart';
import '../HiringScreen.dart';
import '../MicroServices.dart';
import '../ResultMicroServices.dart';

class HireSprintMaster extends StatefulWidget {
  const HireSprintMaster({Key? key}) : super(key: key);

  @override
  _HireSprintMasterState createState() => _HireSprintMasterState();
}

class _HireSprintMasterState extends State<HireSprintMaster> {
  late String uiuxHireIntro =
      "To help us assign a Sprint Master as per your design sprint. Please answer the following questions.";
  late String sprintMasterIntro =
      "To help us assign a UI/UX Designer as per your design sprint. Please answer the following questions.";

  int? selectedRadio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
    selectedRadio2 = 0;
  }

  setSelectedRadio(val) {
    setState(() {
      selectedRadio = val;
    });
  }

  int? selectedRadio2;

  setSelectedRadio2(val2) {
    setState(() {
      selectedRadio2 = val2;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppBar('Sprint Master - Questions', true),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context)?30:20, vertical: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'To help us assign a Sprint Master as per your design sprint. Please answer the following questions.',
                style: gray33Regular16),
            verticalSpace(height: 40),
            Text('1. What is your Design Sprint about?',
                style: gray33Regular14),
            verticalSpace(height: 20),
            Container(
              margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
              width: Responsive.isDesktop(context) ? size.width * 0.60 : size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [dezyShadow]),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: Colors.white,
                    focusColor: Colors.white),
              ),
            ),
            verticalSpace(height: 40),
            Text('2. What are your  objectives?', style: gray33Regular14),
            verticalSpace(height: 20),
            Container(
              margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
              width: Responsive.isDesktop(context) ? size.width * 0.60 : size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [dezyShadow]),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: Colors.white,
                    focusColor: Colors.white),
              ),
            ),
            verticalSpace(height: 40),
            Text('3. What is your project category?', style: gray33Regular14),
            verticalSpace(height: 10),
            Container(
              margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
              child: Responsive.isMobile(context)? Column (
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Business', style: gray66Regular14),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Academic', style: gray66Regular14),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Personal', style: gray66Regular14),
                    ],
                  ),
                ],
              ) : Row (
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Business', style: gray66Regular14),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Academic', style: gray66Regular14),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Personal', style: gray66Regular14),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpace(height: 30),
            Text('4. Please select the domain of your project.',
                style: gray33Regular14),
            verticalSpace(height: 20),
            Container(
                margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
                child: DropdownMenu()),
            verticalSpace(height: 20),
            Text('5. What is your project type?', style: gray33Regular14),
            verticalSpace(height: 10),
            Container(
              margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
              child: Responsive.isMobile(context) ? Column(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: selectedRadio2,
                          activeColor: purpleAccent,
                          onChanged: (val2) {
                            print('Value $val2');
                            setSelectedRadio2(val2);
                          }),
                      Text('Redesign an experience', style: gray66Regular14),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio2,
                          activeColor: purpleAccent,
                          onChanged: (val2) {
                            print('Value $val2');
                            setSelectedRadio2(val2);
                          }),
                      Text('Create a new experience', style: gray66Regular14),
                    ],
                  ),
                ],
              ) : Row(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: selectedRadio2,
                          activeColor: purpleAccent,
                          onChanged: (val2) {
                            print('Value $val2');
                            setSelectedRadio2(val2);
                          }),
                      Text('Redesign an experience', style: gray66Regular14),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio2,
                          activeColor: purpleAccent,
                          onChanged: (val2) {
                            print('Value $val2');
                            setSelectedRadio2(val2);
                          }),
                      Text('Create a new experience', style: gray66Regular14),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpace(height: 40),
            Align(
              alignment: Responsive.isDesktop(context)? Alignment.centerLeft : Alignment.center,
              child: MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                height: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HireSprintMasterResult(),
                    ),
                  );
                },
                color: purpleAccent,
                child: Text(
                  'Submit',
                  style: whiteRegular16,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  final dropdownItems = ['Business', 'Academic', 'Personal'];
  String? value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isDesktop(context) ? size.width * 0.20 : size.width,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: purpleAccent, width: 2.4),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text(
            'Select Design Sprint Domain',
            style: TextStyle(color: Color(0xffbdbdbd)),
          ),
          value: value,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: purpleAccent,
          ),
          items: dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
              ),
            );
          }).toList(),
          onChanged: (value) => setState(() => this.value = value),
        ),
      ),
    );
  }
}
