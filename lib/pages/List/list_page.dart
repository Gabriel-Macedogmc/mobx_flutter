import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_test/controller/list_controller.dart';
import 'package:flutter_mobx_test/models/item_model.dart';
import 'package:flutter_mobx_test/pages/List/components/item_widget.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final controller = ListController();

  _dialog() {
    var model = ItemModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar Item'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Novo item',
              ),
            ),
            actions: [
              TextButton(
                child: Text('Salvar'),
                onPressed: () {
                  controller.addItem(model);
                  Navigator.pop(context);
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setFilter,
          decoration: InputDecoration(
            hintText: 'Pesquisa...',
          ),
        ),
        actions: [
          Observer(builder: (_) {
            return IconButton(
              icon: Text("${controller.totalChecked}"),
              onPressed: () {},
            );
          }),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: controller.listFiltered.length,
              itemBuilder: (_, index) {
                var item = controller.listItems[index];
                return ItemWidget(
                  item: item,
                  removeClicked: () {
                    controller.removeItem(item);
                  },
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
