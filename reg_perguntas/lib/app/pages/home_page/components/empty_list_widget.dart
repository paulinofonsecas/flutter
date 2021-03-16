import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/img/empty-cart.svg',
            color: Colors.white,
            width: 80,
            height: 80,
            semanticsLabel: 'empty list image',
          ),
          SizedBox(height: 20),
          Text(
            'Sem perguntas cadastradas',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
