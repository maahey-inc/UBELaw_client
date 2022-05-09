import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../utilities/size_config.dart';


class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    required this.svgIcon,
  });
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),

      child: Image(
        width: 25,
        height: 25,
        image: Svg(svgIcon),
      ),
      // child: SvgPicture.asset(
      //   svgIcon,
      //   height: getProportionateScreenWidth(18),
      // ),
    );
  }
}
