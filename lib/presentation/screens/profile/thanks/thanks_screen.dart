part of 'thanks.dart';

@RoutePage()
class ThanksScreen extends StatelessWidget {
  const ThanksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const BaseAppBar(
        title: "SEMPL!!",
        foregroundColor: AppColor.white,
        hideBackButton: true,
      ),
      body: Stack(
        children: [
          Image.asset(AppPng.kissGirl),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 0.6,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColor.blueTurquoise,
                  image: DecorationImage(
                    image: AssetImage(AppPng.grain),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: _buildDraggableSheet(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDraggableSheet(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 55,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Спасибо за ваши ответы!",
                  style: AppTheme.boldTitle.copyWith(
                    color: AppColor.lightGrey,
                    height: 0.9,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Товар будет отправлен в ближайшее время. Сроки и статус доставки можно отслеживать в личном кабинете",
                  style: AppTheme.large.copyWith(
                    color: AppColor.lightGrey,
                  ),
                ),
                const SizedBox(height: 20),
                SvgPicture.asset(AppSvg.star)
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppSvg.triangle),
        ),
        Positioned(
          bottom: 20,
          right: 1,
          child: SvgPicture.asset(AppSvg.multiPointedStar),
        ),
        Positioned(
          bottom: 55,
          left: 0,
          right: 0,
          child: BaseButton(
            "На главный экран".toUpperCase(),
            foregroundColor: AppColor.grey,
            textStyle: AppTheme.large,
            icon: SvgPicture.asset(AppSvg.arrow),
            padding: const EdgeInsets.symmetric(horizontal: 22),
            onPressed: () => context.router.pop(),
          ),
        ),
      ],
    );
  }
}
