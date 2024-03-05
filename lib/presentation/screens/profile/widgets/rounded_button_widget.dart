part of '../profile.dart';

class RoundedButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double? size;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color borderColor;

  const RoundedButtonWidget({
    super.key,
    required this.icon,
    this.size = 10,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.borderColor = Colors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: size,
        color: foregroundColor,
      ),
    );
  }
}
