part of "widgets.dart";

class BaseScaffold extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;
  final bool? isExtend;

  const BaseScaffold({
    super.key,
    required this.appBar,
    required this.body,
    this.isExtend,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      extendBodyBehindAppBar: isExtend ?? false,
      body: body,
    );
  }
}
