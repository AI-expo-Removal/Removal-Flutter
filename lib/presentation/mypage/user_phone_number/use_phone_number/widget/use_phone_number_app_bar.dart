import 'package:flutter/material.dart';
import 'package:removal_flutter/core/removal.dart';

class UsePhoneNumberAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UsePhoneNumberAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: preferredSize,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            IconButton(onPressed: (){Navigator.pop(context);},
                icon: Icon(Icons.arrow_back_ios, color: RemovalColor.white,)
            ),
            const SizedBox(width: 116),
            Text('전화번호', style: RemovalTextStyle.heading4(color: RemovalColor.white),)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}

