part of 'widgets.dart';

class BaseButton extends StatelessWidget {
  final String text;

  final EdgeInsetsGeometry padding;

  final VoidCallback onPressed;

  final Widget icon;

  final Color? foregroundColor;

  final Color? backgroundColor;

  final double? gap;

  final TextStyle? textStyle;

  const BaseButton(
    this.text, {
    Key? key,
    required this.onPressed,
    this.foregroundColor = Colors.grey,
    this.icon = const SizedBox(),
    this.gap = 3,
    this.padding = const EdgeInsets.all(8.0),
    this.backgroundColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(text, style: textStyle?.copyWith(color: foregroundColor)),
              SizedBox(width: gap),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
