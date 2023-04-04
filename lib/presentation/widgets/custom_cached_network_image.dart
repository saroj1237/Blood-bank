import 'package:blood_bank/core/utils/asset_manager.dart';
import 'package:blood_bank/core/utils/color_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;
  final BoxFit? fit;
  final Alignment? alignment;

  const CustomCachedImage({
    Key? key,
    this.height,
    this.width,
    required this.imageUrl,
    this.fit,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: fit,
      imageUrl: imageUrl,
      alignment: alignment ?? Alignment.center,
      errorWidget: (context, url, error) {
        return Image.asset(
          AssetManager.donorLogin,
          fit: BoxFit.cover,
        );
      },
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppColor.grey,
          backgroundColor: Color.fromARGB(255, 212, 212, 212),
        ),
      ),
    );
  }
}
