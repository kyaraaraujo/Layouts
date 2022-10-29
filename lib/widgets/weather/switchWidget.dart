import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool toggle = true;
  String iconsPath = imageBasePath + weatherDir + iconsDir;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: toggle,
      activeTrackColor: Colors.lightBlue.shade200.withOpacity(0.54),
      inactiveThumbColor: Colors.yellow.shade900,
      inactiveTrackColor: Colors.yellowAccent.shade700,
      activeColor: Colors.white,
      activeThumbImage: AssetImage('${iconsPath}Moon.png'),
      inactiveThumbImage: AssetImage('${iconsPath}SunDim.png'),
      onChanged: (bool value) {
        setState(() {
          toggle = value;
        });
      },
    );
  }
}
