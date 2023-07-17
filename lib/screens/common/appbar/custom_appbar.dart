import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBarWidget(
      {Key? key,
      this.leadingIcon,
      this.appTitle,
      this.trailingIcon,
      this.onLeadingIconTap,
      this.onTrailingIconTap,
      this.bottomTabs,
      this.bottomBorderColor,
      this.isBack = false,
      this.isClose = false,
      this.centerTitle})
      : super(key: key);

  final Widget? appTitle;
  final String? leadingIcon;
  final Widget? trailingIcon;
  final VoidCallback? onLeadingIconTap;
  final VoidCallback? onTrailingIconTap;
  final PreferredSize? bottomTabs;
  final Color? bottomBorderColor;
  final bool? centerTitle;
  final bool? isBack;
  final bool? isClose;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle ?? false,
      title: appTitle ?? const SizedBox.shrink(),
      // leading: leadingIcon != null && (leadingIcon?.isNotEmpty == true)
      //     ? GestureDetector(
      //         onTap: onLeadingIconTap,
      //         child: Image.asset(
      //           leadingIcon ?? '',
      //         ),
      //       )
      //     : null,
      leading: isClose!
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                ImageConstants.closeIcon,
                width: 30,
                height: 30,
              ),
            )
          : isBack!
              ? GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 10, left: 8),
                    child: SvgPicture.asset(ImageConstants.backArrow),
                  ),
                )
              : leadingIcon != null && (leadingIcon?.isNotEmpty == true)
                  ? GestureDetector(
                      onTap: onLeadingIconTap,
                      child: Image.asset(
                        leadingIcon ?? '',
                      ),
                    )
                  : null,
      actions: [
        trailingIcon != null
            ? Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: trailingIcon ?? const SizedBox.shrink(),
              )
            : const SizedBox.shrink()
      ],
      bottom: bottomTabs,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
