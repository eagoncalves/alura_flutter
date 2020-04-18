import 'package:flutter/material.dart';
import 'package:example/models/transfer.dart';
import 'package:example/screens/form_transfer.dart';

final List<Item> _items = new List();

const String _titleAppBar = 'Transferências';

class TransferListState extends State<TransferList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titleAppBar)),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) => _items[index],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(
          () => _addNewTransfer(context),
        ),
      ),
    );
  }

  void _addNewTransfer(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TransferForm();
    })).then((receivedTransfer) => _updateItemList(receivedTransfer));
  }

  void _updateItemList(Transfer transfer) {
    if (transfer != null) {
      _items.add(Item(transfer));
    }
  }
}

class TransferList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class Item extends StatelessWidget {
  Item(this._transfer);

  final Transfer _transfer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.account.toString()),
      ),
    );
  }
}
