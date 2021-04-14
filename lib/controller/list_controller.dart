import 'package:flutter_mobx_test/models/item_model.dart';
import 'package:mobx/mobx.dart';
part 'list_controller.g.dart';

class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(
      title: 'Item 1',
      check: false,
    ),
    ItemModel(
      title: 'Item 2',
      check: false,
    ),
    ItemModel(
      title: 'Item 3',
      check: true,
    ),
    ItemModel(
      title: 'Item 4',
      check: true,
    )
  ].asObservable();

  @computed
  int get totalChecked => listItems.where((item) => item.check).length;

  @action
  addItem(ItemModel model) {
    listItems.add(model);
  }

  @computed
  List<ItemModel> get listFiltered {
    if (filter.isEmpty) {
      return listItems;
    } else {
      return listItems
          .where(
              (item) => item.title.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }
  }

  @observable
  String filter = '';

  @action
  setFilter(String value) => filter = value;

  @action
  removeItem(ItemModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }
}
