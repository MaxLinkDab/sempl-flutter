part of "widgets.dart";

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? foregroundColor;
  final bool hideBackButton;

  const BaseAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.foregroundColor = AppColor.black,
    this.hideBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTheme.appBarText.copyWith(
          color: foregroundColor,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: foregroundColor,
      centerTitle: true,
      leading: leading,
      actions: actions,
      automaticallyImplyLeading: !hideBackButton,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
