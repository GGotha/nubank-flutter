import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenuBottom({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 10.5,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
