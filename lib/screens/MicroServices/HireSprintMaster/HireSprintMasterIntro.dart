import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../GlobalAppBar.dart';
import '../../colors.dart';
import '../../typography.dart';
import 'HireSprintMaster.dart';

class HireSprintMasterIntro extends StatelessWidget {
  const HireSprintMasterIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppBar('Sprint Master - Information', true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context)?30:20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Who is a Sprint Master?',
                style: Responsive.isMobile(context)?gray33Regular20:gray33Bold26,
              ),
              verticalSpace(height: 16),
              Container(
                margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempor tempor risus in consequat. Pellentesque feugiat leo vel volutpat elementum. \nFusce sed ante convallis, pulvinar orci quis, tincidunt dolor. Integer luctus dolor felis, at gravida risus finibus in. \nDonec enim nibh, efficitur non ultrices non, malesuada et neque',
                  style: Responsive.isMobile(context)? gray66Regular14 : gray66_500_18,
                ),
              ),
              verticalSpace(height: 40),
              Text(
                'Benefits of hiring a Sprint Master',
                style: Responsive.isMobile(context)?gray33Regular20:gray33Bold26,
              ),
              verticalSpace(height: 16),
              Container(
                margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
                child: Text(' \u2022 Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n \u2022 Pellentesque feugiat leo vel volutpat elementum. \n \u2022 Fusce sed ante convallis, pulvinar orci quis, tincidunt dolor.\n \u2022 Donec enim nibh, efficitur non ultrices non, malesuada et neque \n',
                  style: Responsive.isMobile(context)? gray66Regular14 : gray66_500_18,
                ),
              ),
              verticalSpace(height: 40),
              Text(
                'Fees to hire a Sprint Master',
                style: Responsive.isMobile(context)?gray33Regular20:gray33Bold26,
              ),
              verticalSpace(height: 16),
              Container(
                margin:  Responsive.isDesktop(context) ? EdgeInsets.only(left: 20) : EdgeInsets.only(left: 0),
                child: Text("A fee of \$50 would be charged.",
                  style: Responsive.isMobile(context)? gray66Regular14 : gray66_500_18,
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
                        builder: (context) => HireSprintMaster(),
                      ),
                    );
                  },
                  color: purpleAccent,
                  child: Text(
                    'Proceed',
                    style: whiteRegular16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
