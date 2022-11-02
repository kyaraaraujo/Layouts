import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  final String imagePath;
  final Widget page;
  final String text;

  const StackWidget(this.imagePath, this.page, this.text, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 120,
          width: double.infinity,
          child: GestureDetector(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              alignment: AlignmentDirectional.center,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
            },
          ),
        ),
        Container(
          color: Colors.black54,
          width: double.infinity,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
