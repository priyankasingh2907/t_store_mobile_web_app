
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TCartCounterTcon extends StatelessWidget {
  const TCartCounterTcon({
    super.key, this.onPressed, this.count, this.color,
  });

  final VoidCallback? onPressed;
  final int? count;
  final Color? color;
  

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
         IconButton(
           icon:  Icon(Icons.shopping_cart,color: color??TColors.grey,),
           onPressed: onPressed,
         ),
         Positioned(
           right: 0,
           top: 0,
           child: CircleAvatar(
             radius: 10,
             backgroundColor: TColors.primary,
             child: Text('2',style: Theme.of(context).textTheme.labelSmall?.apply(color: TColors.white),),
           ),
         )
       ],
    );
  }
}
