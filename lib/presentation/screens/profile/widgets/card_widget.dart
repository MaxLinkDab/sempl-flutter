import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/presentation/const/app_colors.dart';
import 'package:sempl/presentation/const/app_png.dart';
import 'package:sempl/presentation/const/app_svg.dart';
import 'package:sempl/presentation/const/app_theme.dart';
import 'package:sempl/presentation/widgets/widgets.dart';

class CardWidget extends StatelessWidget {
  final double? height;
  final VoidCallback onPressed;
  const CardWidget({
    super.key,
    this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          color: AppColor.turquoise, // Зеленый фон
          image: DecorationImage(
            image: AssetImage(AppPng.grain), // Фото зернистости
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(AppSvg.triangleForCard),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 18),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Мы собрали продукт, чтобы попробовать специально для вас'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppTheme.boldBody.copyWith(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      AppSvg.giftbox,
                    ),
                  ),
                  Text(
                    "НА ОСНОВЕ ДАННЫХ ВАШЕЙ АНКЕТЫ МЫ СОБРАЛИ ДЛЯ ВАС КОРЗИНУ ИНТЕРЕСНЫХ ТОВАРОВ",
                    textAlign: TextAlign.center,
                    style: AppTheme.normal,
                  ),
                  BaseButton(
                    "ХОЧУ ЭТО!",
                    textStyle: AppTheme.large,
                    onPressed: onPressed,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
