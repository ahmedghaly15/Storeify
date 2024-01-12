import 'package:equatable/equatable.dart';

class OnBoardingModel extends Equatable {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  List<Object?> get props => [image, title, subTitle];
}
