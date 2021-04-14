// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on _ListControllerBase, Store {
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: '_ListControllerBase.totalChecked'))
          .value;
  Computed<List<ItemModel>> _$listFilteredComputed;

  @override
  List<ItemModel> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<ItemModel>>(() => super.listFiltered,
              name: '_ListControllerBase.listFiltered'))
      .value;

  final _$listItemsAtom = Atom(name: '_ListControllerBase.listItems');

  @override
  ObservableList<ItemModel> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<ItemModel> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  final _$filterAtom = Atom(name: '_ListControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_ListControllerBaseActionController =
      ActionController(name: '_ListControllerBase');

  @override
  dynamic addItem(ItemModel model) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.addItem');
    try {
      return super.addItem(model);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel model) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.removeItem');
    try {
      return super.removeItem(model);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems},
filter: ${filter},
totalChecked: ${totalChecked},
listFiltered: ${listFiltered}
    ''';
  }
}
