import 'package:flutter/material.dart';

class CurrentCard extends StatelessWidget {
  const CurrentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(64),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                right: 0,
                child: Opacity(
                  opacity: 0.65,
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    size: 32,
                  ),
                ),
              ),
              Text(
                '32',
                style: TextStyle(
                  color: Colors.pink[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 120,
                ),
              ),
            ],
          ),
          Text(
            'Partly Sunny',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 24),
          ),
          SizedBox(height: 32),
          Opacity(
            opacity: 0.55,
            child: Text(
              '24 OCT, FRIDAY',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
