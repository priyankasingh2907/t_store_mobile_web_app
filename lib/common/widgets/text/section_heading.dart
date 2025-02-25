
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, required this.title,  this.buttonText="view all", this.textColor, this.onPressed,  this.showActionButton=true,
  });
  final String title , buttonText;
  final Color? textColor;
  final VoidCallback? onPressed;
final bool showActionButton;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style:Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

    
        ),
      if (showActionButton) TextButton(onPressed: onPressed, child:  Text(buttonText)),
      ],
    );
  }
}
