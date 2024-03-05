part of '../profile.dart';

class AvatarWidget extends StatelessWidget {
  final String avatar;

  final VoidCallback onTap;

  final double? size;

  final Widget? secondaryButton;

  final Color borderColor;

  const AvatarWidget({
    Key? key,
    required this.avatar,
    this.size = 20,
    required this.onTap,
    this.secondaryButton,
    this.borderColor = const Color(0xFF99BFD4),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: secondaryButton ?? const SizedBox(),
        )
      ],
    );
  }
}
