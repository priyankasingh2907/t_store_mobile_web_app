import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  AppBar(
                    title: const Text('Home'),
                  ),
                  const SizedBox(height: 20),
                  const Text('Welcome to TStore'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
