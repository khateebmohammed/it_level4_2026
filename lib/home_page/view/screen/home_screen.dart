import 'package:flutter/material.dart';
import 'package:testflutterjava/core/shared_widgets/custom_text.dart';
import 'package:testflutterjava/core/thems/colors.dart';
import 'package:testflutterjava/home_page/view/widgets/home_page_builder.dart';
import 'package:testflutterjava/home_page/view/widgets/home_page_header.dart';
import 'package:testflutterjava/news_details/view/screen/news_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List news = [
    {
      "img": "assets/images/rebublic.png",
      "title": "Who is Paris Hilton Really?",
      "des": "The International Malayan University",
      "time": DateTime.now().subtract(Duration(hours: 1)),
    },
    {
      "img": "assets/images/rebublic.png",
      "title": "Who is Sanaa Hilton Really?",
      "des": "The International Malayan University",
      "time": DateTime.now().subtract(Duration(hours: 2)),
    },
    {
      "img": "assets/images/rebublic.png",
      "title": "Who is Aden Hilton Really?",
      "des": "The International Malayan University",
      "time": DateTime.now().subtract(Duration(hours: 3)),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
          child: Column(
            children: [
              HomePageHeader(),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomText(
                    textColor: Colors.black,
                    text: "Jaco Blake: TRump Visited Yemen",
                    size: 18,
                  ),
                  Spacer(),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: news.length,
                  itemBuilder: (context, i) =>
                  HomePageBuilder(data: news[i],),
                  separatorBuilder: (context, index) => SizedBox(height: 10,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
