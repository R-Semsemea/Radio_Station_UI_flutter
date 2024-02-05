import 'app_images.dart';

class OnBoardingModel {
  final String picture;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.picture, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingElements = [
  OnBoardingModel(
    picture: AppImages.onBoarding1,
    title: "Tune your Radio",
    subTitle:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna",
  ),
];
