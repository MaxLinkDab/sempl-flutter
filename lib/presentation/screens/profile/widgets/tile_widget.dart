part of '../profile.dart';

class TileWidget extends StatelessWidget {
  final String title;

  final VoidCallback onTap;

  final String subtitle;

  const TileWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color(0x00000005),
              offset: Offset(0, 33),
              blurRadius: 208,
            ),
          ],
        ),
        child: ListTile(
          onTap: onTap,
          title: Text(title),
          subtitle: Text(subtitle),
          contentPadding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppSvg.arrow),
              ],
            ),
          ),
          tileColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
