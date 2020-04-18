import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final bool firstFieldFocus;

  Input({
    this.label,
    this.hint,
    this.icon,
    this.controller,
    this.firstFieldFocus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        controller: this.controller,
        style: TextStyle(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          icon: this.icon != null ? Icon(this.icon) : null,
          labelText: this.label,
          hintText: this.hint,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
