part of '../profile.dart';

class LittleEditButtonWidget extends StatelessWidget {
  final double size;
  final Widget? child;
  final Color borderColor;
  final VoidCallback onTap;
  const LittleEditButtonWidget({
    Key? key,
    this.size = 20,
    this.child,
    this.borderColor = Colors.white,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: Material(
        color: const Color(0xFF99BFD4),
        borderRadius: BorderRadius.circular(size / 2),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(size / 2),
          child: Center(
            child: SvgPicture.asset(
              "assets/svg/edit.svg",
              width: size / 2,
              height: size / 2,
            ),
          ),
        ),
      ),
    );
  }
}
