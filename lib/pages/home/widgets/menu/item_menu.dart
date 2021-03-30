import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
              color: Colors.white,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}