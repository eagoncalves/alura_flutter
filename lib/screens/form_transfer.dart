import 'package:flutter/material.dart';
import 'package:example/components/input.dart';
import 'package:example/components/button.dart';

final TextEditingController _controllerAccount = TextEditingController();
final TextEditingController _controllerValue = TextEditingController();

const String _appBarTitle = 'Nova transferência';
const String _labelAccount = 'Número da conta';
const String _labelValue = 'Valor';
const String _hintAccount = '000000';
const String _hintValue = '00.0';
const String _buttonTitle = 'Cadastrar';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Input(
              label: _labelAccount,
              hint: _hintAccount,
              controller: _controllerAccount,
            ),
            Input(
              label: _labelValue,
              hint: _hintValue,
              icon: Icons.monetization_on,
              controller: _controllerValue,
            ),
            Button(
              _buttonTitle,
              _controllerAccount,
              _controllerValue,
            ),
          ],
        ),
      ),
    );
  }
}
