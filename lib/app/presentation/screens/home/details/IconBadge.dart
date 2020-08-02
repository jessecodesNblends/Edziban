import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  IconBadge({@required this.icon, @required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(3.0, 3.0),
          )
        ],
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(
        icon,
        size: 20.0,
        color: iconColor,
      ),
    );
  }
}
