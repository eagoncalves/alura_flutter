import 'package:flutter/material.dart';
import 'package:example/models/transfer.dart';

class Button extends StatelessWidget {
  final String _title;
  final TextEditingController _controllerAccount;
  final TextEditingController _controllerValue;

  Button(
    this._title,
    this._controllerAccount,
    this._controllerValue,
  );

  void _createTransfer(BuildContext context) {
    final int account = int.tryParse(_controllerAccount.text);
    final double value = double.tryParse(_controllerValue.text);

    if (account > 0 && value > 0) {
      final Transfer transfer = Transfer(value, account);
      _clearFields();
      Navigator.pop(
        context,
        transfer,
      );
    }
  }

  void _clearFields() {
    _controllerAccount.clear();
    _controllerValue.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: RaisedButton(
        onPressed: () => _createTransfer(context),
        child: Text(this._title),
      ),
    );
  }
}
