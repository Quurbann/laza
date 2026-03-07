import 'package:flutter/material.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button_provider.dart';
import 'package:provider/provider.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ToggleButtonProvider>();

    return Switch(
      value: provider.isOn,
      onChanged: (_) => provider.toggle(),
      activeThumbColor: Colors.green,
      activeTrackColor: Colors.green,
      inactiveTrackColor: Colors.grey,
    );
  }
}