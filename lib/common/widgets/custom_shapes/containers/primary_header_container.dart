import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryWidgetConatiner extends StatelessWidget {
  const TPrimaryWidgetConatiner({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),

        child:  Stack(
          children: [
            Positioned(top: -150, right: -250, child: TCirculatConatiner(

              backgroundColor: TColors.textWhite.withAlpha((0.1 * 255).toInt()),
            )),
          ],
        ),
      ),
    );
  }
}

