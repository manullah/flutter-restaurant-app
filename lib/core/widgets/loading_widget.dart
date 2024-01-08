import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/constants/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: Center(
        child: CircularProgressIndicator(
          color: TColors.primary,
        ),
      ),
    );
  }
}
