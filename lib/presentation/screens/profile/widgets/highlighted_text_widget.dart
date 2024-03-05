part of '../profile.dart';

class HighlightedTextWidget extends StatelessWidget {
  final String text;
  final Color? foregroundColor;
  final Color? backgroundColor;

  const HighlightedTextWidget(
    this.text, {
    super.key,
    this.foregroundColor = AppColor.purple,
    this.backgroundColor = AppColor.yellow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: AppTheme.little.copyWith(color: foregroundColor),
      ),
    );
  }
}
