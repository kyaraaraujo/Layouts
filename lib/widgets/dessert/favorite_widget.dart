import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 99;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
        _isFavorited = false;
      } else {
        _favoriteCount++;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Icon favoriteIcon = _isFavorited
        ? const Icon(
            Icons.favorite,
            color: Colors.red,
          )
        : const Icon(
            Icons.favorite_border,
            color: Colors.red,
          );

    return Row(
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.centerRight,
          onPressed: _toggleFavorite,
          icon: favoriteIcon,
        ),
        SizedBox(
          width: 25,
          child: Text('$_favoriteCount'),
        ),
      ],
    );
  }
}
