import 'package:book_list_app/core/constants/colors.dart';
import 'package:book_list_app/core/constants/text_style.dart';
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/

class ApiErrorWidget extends StatelessWidget {
  /// Display images from project assets
  final String? image;

  /*!*/

  /// Display image from package assets
  final PackageImage? packageImage;

  /*!*/

  /// Set text for subTitle
  final String? subTitle;

  /*!*/

  /// Set text style for subTitle
  final TextStyle? subtitleTextStyle;

  /*!*/

  /// Set text for error
  final String error;

  /*!*/

  /// Text style for title
  final TextStyle? titleTextStyle;

  /*!*/
  final String? tryAgainText;
  final Function()? onTryAgainPressed;

  /// Hides the background circular ball animation
  /// By default `false` value is set
  final bool? hideBackgroundAnimation;

  const ApiErrorWidget(
    this.error, {
    super.key,
    this.onTryAgainPressed,
    this.tryAgainText,
    this.image,
    this.packageImage,
    this.subTitle,
    this.subtitleTextStyle,
    this.titleTextStyle,
    this.hideBackgroundAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .7,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: EmptyWidget(
                  title: error,
                  packageImage: PackageImage.Image_3,
                  titleTextStyle: AppTextStyles.font20MainColorBold.copyWith(fontSize: 18),
                ),
              ),
              if (onTryAgainPressed != null)
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * .7,
                    child: CupertinoButton(
                      color: ColorsManager.mainColor,
                      onPressed: onTryAgainPressed,
                      child: Text(tryAgainText ?? "Try again", style: AppTextStyles.font15WhiteBold),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
