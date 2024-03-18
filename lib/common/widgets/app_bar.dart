import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool canGoBack;
  const TAppBar({
    Key? key,
    required this.title,
    this.canGoBack = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: TColors.textWhite),
      automaticallyImplyLeading: canGoBack,
      backgroundColor: TColors.primary,
      centerTitle: true,
      title: NormalText(text: title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
