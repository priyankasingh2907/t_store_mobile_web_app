import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: const ShapeBorderClipper(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -150,
                child: Container(
                  width: 400,
                  height: 400,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(400),
                    color: TColors.textWhite.withAlpha((0.1 * 255).toInt()),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: -250,
                child: Container(
                  width: 400,
                  height: 400,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(400),
                    color: TColors.textWhite.withAlpha((0.1 * 255).toInt()),
                  ),
                ),
              ),

              //colummmmmm
              child,
            ],
          ),
        ),
      ),
    );
  }
}
