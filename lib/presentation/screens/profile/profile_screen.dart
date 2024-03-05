part of 'profile.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'SEMPL!'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 34),
                child: _buildTopProfile(),
              ),
              Text(
                "мои ожидаемые образцы".toUpperCase(),
                style: AppTheme.h1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 55,
                ),
                child: Center(
                  child: Text(
                    "у вас еще нет протестированных образцов :(",
                    style: AppTheme.normal.copyWith(color: AppColor.grey),
                  ),
                ),
              ),
              CardWidget(onPressed: () {
                context.router.push(const ThanksRoute());
              }),
              Padding(
                padding: const EdgeInsets.only(top: 27, bottom: 13),
                child: Text(
                  "Мои завершенные образцы:".toUpperCase(),
                  style: AppTheme.h1,
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  TileWidget(
                    title: "Очиститель зубов",
                    subtitle: "доставлено 15 января 2023г.",
                    onTap: () {},
                  ),
                  TileWidget(
                    title: "Духи dolche&gabanna",
                    subtitle: "доставлено 17 августа 2023г.",
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopProfile() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: AvatarWidget(
                avatar: AppPng.avatar,
                size: 70,
                onTap: () {},
                secondaryButton: LittleEditButtonWidget(onTap: () {}),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Касия Лангер",
                  style: AppTheme.h1,
                ),
                Text(
                  "@wolflikemeee",
                  style: AppTheme.medium.copyWith(
                    color: AppColor.purple,
                  ),
                ),
                const HighlightedTextWidget("50 баллов"),
              ],
            ),
          ],
        ),
        const Spacer(),
        BaseButton(
          "Изменить",
          onPressed: () {},
          icon: SvgPicture.asset(AppSvg.union),
          textStyle: AppTheme.medium,
          padding: EdgeInsets.zero,
          backgroundColor: AppColor.blue,
          foregroundColor: AppColor.white,
        ),
      ],
    );
  }
}
