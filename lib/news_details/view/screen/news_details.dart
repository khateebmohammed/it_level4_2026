import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutterjava/core/shared_widgets/custom_text.dart';
import 'package:testflutterjava/core/thems/colors.dart';
import 'package:testflutterjava/home_page/view/widgets/custom_show_imag.dart';

class NewsDetails extends StatefulWidget {
  final Map data;

  const NewsDetails({super.key, required this.data});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          textColor: AppColor.PrimaryColor,
          text: "News Details",
          size: 18,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.g_translate)),
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmarks_outlined)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.share)),
        ],
      ),

      body: ListView(
        children: [
          Hero(
              tag: widget.data['time'],
              child: CustomShowImag(imgUrl: widget.data['img'])),
          SizedBox(height: 20),
          CustomText(
            textColor: AppColor.PrimaryColor,
            text: widget.data['title'],
            size: 18,
          ),
          SizedBox(height: 10),
          CustomText(
            textColor: Colors.black,
            text: widget.data['des'],
            size: 16,
          ),
        ],
      ),
    );
  }
}
