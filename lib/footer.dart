import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/header.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'colors.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        GestureDetector(
          onTap: () => launch(
            "mailto:cagriaydin.dev@gmail.com",
          ),
          child: VxDevice(
            mobile: VStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.heightBox,
                "cagriaydin.dev@gmail.com"
                    .text
                    .color(Coolors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolors.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              crossAlignment: CrossAxisAlignment.center,
            ),
            web: HStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.widthBox,
                "cagriaydin.dev@gmail.com"
                    .text
                    .color(Coolors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolors.accentColor)
                    .p16
                    .rounded
                    .make(),
              ],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentWidth * 70).scale150().p16(),
          ),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        // "Thanks for scrolling, ".richText.semiBold.white.withTextSpanChildren(
        //     ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        if (context.isMobile) SocialAccounts(),
        if (context.isMobile) 20.heightBox,
        [
          "Made with Flutter".text.gray500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.blue500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
