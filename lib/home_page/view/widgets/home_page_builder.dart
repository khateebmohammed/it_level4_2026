import 'package:flutter/material.dart';

import '../../../core/shared_widgets/custom_text.dart';
import '../../../core/thems/colors.dart';
import '../../../news_details/view/screen/news_details.dart';

class HomePageBuilder extends StatefulWidget {
  final Map data;

  const HomePageBuilder({super.key, required this.data});

  @override
  State<HomePageBuilder> createState() => _HomePageBuilderState();
}

class _HomePageBuilderState extends State<HomePageBuilder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewsDetails(data: widget.data),
          ),
        );
      },
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Row(
          children: [
            Expanded(
              child: Hero(
                tag:widget.data['time'] ,
                child: Container(
                  height: 120,
                  child: Image.asset(widget.data['img']),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      textColor: Colors.black,
                      text: widget.data['title'],
                      size: 16,
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      textColor: Colors.black,
                      text: widget.data['des'],
                      size: 14,
                    ),
                    CustomText(
                      textColor: AppColor.PrimaryColor,
                      text: widget.data['time'].toString().split(" ")[0],
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
