
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryWidgetConatiner extends StatelessWidget {
  const TPrimaryWidgetConatiner({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: SizedBox(
            height: 400,
            child: Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -250,
                  child: Container(
                    width: 400,
                    height: 400,
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: TColors.primary,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: -300,
                  child: Container(
                    width: 400,
                    height: 400,
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: TColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

