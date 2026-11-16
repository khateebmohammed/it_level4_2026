import 'package:flutter/material.dart';
import 'package:testflutterjava/home_page/view/widgets/custom_show_imag.dart';

import '../../../core/shared_widgets/custom_text.dart';
import '../../../core/thems/colors.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              textColor: AppColor.PrimaryColor,
              text: "Daily News",
              size: 24,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined),
            ),
          ],
        ),
        Divider(color: Colors.grey.shade300, height: 20),
       CustomShowImag(imgUrl: "assets/images/rebublic.png")
      ],
    );
  }
}
