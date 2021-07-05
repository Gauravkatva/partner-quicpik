import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

class CarouselScreens extends StatelessWidget {
  CarouselScreens({Key? key}) : super(key: key);

  PageViewModel pageViewModel(
      BuildContext context, String title, String imageUrl, String content) {
    return PageViewModel(
      decoration: PageDecoration(pageColor: themeData(context).primaryColor),
      title: "",
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: themeData(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Image.asset(
            imageUrl,
            height: screenSize(context).height / 2.5,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: themeData(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> listPagesViewModel = [
      pageViewModel(context, "Manage Live Orders", "assets/live_orders.png",
          "asfa afdsf sgg sdgiv sdib skidui sdbvisbvsdv boisubsvo sidvusi uefowf uhofeogb hdsuosv"),
      pageViewModel(
          context,
          "Manage Your Product Efficiently",
          "assets/efficiency.png",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget magna vestibulum,donec quis netus malesuada vitae."),
      pageViewModel(context, "Past Order History", "assets/history.png",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget magna vestibulum,donec quis netus malesuada vitae."),
      pageViewModel(
          context,
          "Advertise Products To Trusted Customers",
          "assets/trusted_customers.png",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget magna vestibulum,donec quis netus malesuada vitae.")
    ];

    return IntroductionScreen(
      globalBackgroundColor: themeData(context).primaryColor,
      pages: listPagesViewModel,
      onDone: () {
        // When done button is press
      },
      onSkip: () {
        // You can also override onSkip callback
      },
      showSkipButton: true,
      skip: const Text(
        "Skip",
      ),
      skipColor: Colors.white,
      next: const Icon(Icons.arrow_right_alt),
      nextColor: Colors.white,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      doneColor: Colors.white,
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.white,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
