import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_shapes/curved_edges.dart';
import 'package:t_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCustomCurvedEdges(),
              child: Container(
                color: TColors.primary,
                padding: const EdgeInsets.all(0),
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
          ],
        ),
      ),
    );
  }
}
