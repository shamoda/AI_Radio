import 'package:ai_radio/utils/ai_util.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(children: [
        VxAnimatedBox().size(context.screenWidth, context.screenHeight)
        .withGradient(LinearGradient(
          colors: [
            AIColors.primaryColor1,
            AIColors.primaryColor2
          ], begin: Alignment.topLeft, end: Alignment.bottomRight ),
        )
        .make(),
        AppBar(
          title: "AI Radio".text.xl4.bold.white.make().shimmer(
            primaryColor: Vx.purple300, secondaryColor: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
        ).h(100.0).p16()
      ],
      ),
    );
  }
}

